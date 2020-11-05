class Card < ApplicationRecord
  belongs_to :list

  with_options presence: true do
    validates :title, length: { in: 1..255, message: 'は255文字以下で入力してください' }
    validates :memo, length: { maximum: 1000, message: 'は1000文字以下で入力してください' }
  end
end
