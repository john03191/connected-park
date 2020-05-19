Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admins
  devise_for :users
  
  # メール認証システム
  # if Rails.env.development?  
  #   mount LetterOpenerWeb::Engine, at: "/letter_opener"  
  # end 

#   devise_for :admins, controllers: {
#     sessions:      'admins/sessions',
#     passwords:     'admins/passwords',
#     registrations: 'admins/registrations'
# }
#   devise_for :users, controllers: {
#     sessions:      'users/sessions',
#     passwords:     'users/passwords',
#     registrations: 'users/registrations'
# }

  root "messages#index"
  resources :users, only: [:edit, :update]
end
