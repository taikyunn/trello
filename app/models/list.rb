class List < ApplicationRecord
  belongs_to :user
  has_many :cards, dependent: :destroy

  with_options presence: true do
    validates :title, length: { maximum: 10, message: 'は10文字以下で入力してください' }
    validates :description
  end
end
