class User < ApplicationRecord
  has_many :parks
  has_many :activities
  has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(:email => data["email"]).first

    #users to be created if they don't exist
    unless user
      user = User.create(username: data["username"],
      email: data["email"],
      password: Devise.friendly_token[0,20]
         )
    end
    user
  end

  def make_name
    self.email.split("@")[0].capitalize
  end

end
