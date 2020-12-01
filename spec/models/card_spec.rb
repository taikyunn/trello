require 'rails_helper'

RSpec.describe Card, type: :model do
  describe List do
    before do
      @user = FactoryBot.create(:user)
      @list = FactoryBot.create(:list, user_id: @user.id)
      @card = FactoryBot.build(:card, list_id: @list.id)
    end

    describe 'カード作成' do
      context 'カード作成がうまくいく時' do
        it '全てがうまくいけば作成できる' do
          expect(@card).to be_valid
        end
      end

      context 'カード作成がうまくいかない時' do
        it 'titleが1~255文字でないと作成できない' do
          @card.title = ''
          @card.valid?
          expect(@card.errors.full_messages).to include('Titleは1~255文字以下で入力してください')
        end
        it 'memoが1~1000文字出ないと作成できない' do
          @card.memo = ''
          @card.valid?
          expect(@card.errors.full_messages).to include('Memoは1~1000文字以下で入力してください')
        end
      end
    end
  end
end
