class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # Topページをログインユーザーしかみられなくするのでコメントアウト
  # before_action :authenticate_user!

  # ログインしていないと編集＆削除が出来ないようにする記述
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  # 名前を保存できるようにする
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image]) 
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :image])
  end
end
