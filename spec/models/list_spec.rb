require 'rails_helper'

RSpec.describe List, type: :model do
  describe List do
    before do
      @user = FactoryBot.create(:user)
      @list = FactoryBot.build(:list, user_id: @user.id)
    end

    describe 'リスト作成' do
      context 'リスト作成がうまくいく時' do
        it '全てがうまくいけば作成できる' do
          expect(@list).to be_valid
        end
      end
      context 'リスト作成がうまくいかない時' do
        it 'titleが空だと登録できない' do
          @list.title = ''
          @list.valid?
          expect(@list.errors.full_messages).to include("タイトルを入力してください")
        end
        it 'titileが10文字より多いと登録できない' do
          @list.title = 'タイトルタイトルタイトル'
          @list.valid?
          expect(@list.errors.full_messages).to include("タイトルは10文字以下で入力してください")
        end

      end
    end
  end
end
