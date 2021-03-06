class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # mount_uploader :image, ImageUploader
  validates :name, presence: true, uniqueness: true
  mount_uploader :image, ImageUploader
end
