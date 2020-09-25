require 'rails_helper'

RSpec.describe User, type: :model do
  describe User do
    before do
      @user = FactoryBot.build(:user)
    end

    describe 'ユーザー新規登録' do
      context '新規登録がうまく行く時' do
        it '全てがうまくいけば登録できる' do
          expect(@user).to be_valid
        end
      end
      context '新規登録がうまくいかない時' do
        
      end
    end
  end
end
