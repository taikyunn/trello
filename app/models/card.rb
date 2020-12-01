class Card < ApplicationRecord
  belongs_to :list

  with_options presence: true do
    validates :title, length: { in: 1..255, message: 'は1~255文字以下で入力してください' }
    validates :memo, length: { in: 1..255, message: 'は1~1000文字以下で入力してください' }
  end
end
