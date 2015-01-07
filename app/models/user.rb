class User
  include Mongoid::Document

  
  validates :username, uniqueness: true

  field :username, type: String
  field :email, type: String  
  field :user_id, type: String	
  field :password_digest, type: String
  field :first_name, type: String
  field :last_name, type: String
  field :category, type: String
  field :bio, type: String
  field :contact_info, type: String

  def password=(unencrypted_password)
    self.password_digest = BCrypt::Password.create(unencrypted_password)
  end

  # a new method to authenticate a user

  def authenticate(unencrypted_password)
    if BCrypt::Password.new(self.password_digest) == unencrypted_password
      return self
    else
      return false
    end
  end
 

  has_many :posts

end


