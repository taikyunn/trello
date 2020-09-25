class User < ApplicationRecord
  has_many :lists
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         with_options presence: true do
          validates :nickname, length: { maximum: 10, message: 'は10文字以下で入力してください' }
          validates :email, uniqueness: true
          validates :password, format: { with: /[a-z\d]{6,}/i }
         end

end
