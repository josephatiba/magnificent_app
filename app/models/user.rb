class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  field :username, type: String
  field :email, type: String	
  field :password_digest, type: String	
  field :first_name, type: String
  field :last_name, type: String
  field :category, type: String
  field :bio, type: String
  field :contact_info, type: String
  has_many :posts

  has_secure_password
end


