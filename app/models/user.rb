class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :nickname, presence: true, length: { maximum: 10, message: 'は10文字以下で入力してください'}
end
