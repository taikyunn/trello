class List < ApplicationRecord
  belongs_to :user
  has_many :cards, dependent: :destroy

  validates :title, presence: true, length: { maximum: 10, message: 'は10文字以下で入力してください' }
end
