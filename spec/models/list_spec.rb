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
        
      end
    end
  end
end
