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
        it 'nicknameが空だと登録できない' do
          @user.nickname = ''
          @user.valid?
          binding.pry
          expect(@user.errors.full_messages).to include('ニックネームを入力してください')
        end
        it 'emailが空だと登録できない' do
          @user.email = ''
          @user.valid?
          binding.pry
          expect(@user.errors.full_messages).to include('Eメールを入力してください')
        end
        it '重複したemailが存在する場合登録できない' do
          @user.save
          another_user = FactoryBot.build(:user)
          another_user.email = @user.email
          another_user.valid?
          binding.pry
          expect(another_user.errors.full_messages).to include('Eメールはすでに存在します')
        end
        it '@がないと登録できない' do
          
        end
        it 'passwordが空では登録できない' do
          
        end
        it 'passwordが5文字以下では登録できない' do
          
        end
        it 'passwordが半角英数字でなければ登録できない' do
          
        end
        it 'passwordが存在していてもpassword_confirmationが空では登録できない' do

        end
      end
    end
  end
end
