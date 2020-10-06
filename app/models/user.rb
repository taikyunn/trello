class User < ApplicationRecord
  has_many :lists

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]

         has_many :sns_credentials
         
  with_options presence: true do
    validates :nickname, length: { maximum: 10, message: 'は10文字以下で入力してください' }
    validates :email, uniqueness: true
    validates :password, format: { with: /[a-z\d]{6,}/i, message: 'は6文字以上で入力してください' }
  end

  def self.from_omniauth(auth)
    sns = SnsCredential.where(provider: auth.provider, uid: auth.uid).first_or_create
    user = User.where(email: auth.info.email).first_or_initialize(
      nickname: auth.info.name,
        email: auth.info.email
    )
  end
end
