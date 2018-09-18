class User < ApplicationRecord
  before_save { self.email = email.downcase }
  def full_name
  self.first_name + " " + self.last_name
  end
  has_one_attached :photo
  has_secure_password
  validates :password, presence: true, length: {maximum: 32, minimum: 8}
  validates :email, presence: true, length: { maximum: 100 }

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MID_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  def authenticated?(attribute, token)
    digest = send("#{attribute}_digest")
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password?(token)
  end


    def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        name_to_be = auth.info.name
        first = name_to_be.split(" ")[0]
        last  = name_to_be.split(" ")[1]
        user.first_name = first
        user.last_name = last
        user.email = auth.info.email
        # user.city = auth.info.user_location
        # user.provider_image = auth.info.image
        user.oauth_token = auth.credentials.token
        user.oauth_expires_at = Time.at(auth.credentials.expires_at)
        user.password = SecureRandom.urlsafe_base64(n=6)
        user.password_confirmation = user.password
        # user.activated = true
        # user.activated_at = Time.now
        user.save!
      end
    end

end
