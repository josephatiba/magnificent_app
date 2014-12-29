require 'bcrypt'

class User
  include Mongoid::Document

  attr_accessor :password

  field :username, type: String
  field :email, type: String	
  field :password_hash, type: String
  field :password_digest, type: String
  field :first_name, type: String
  field :last_name, type: String
  field :category, type: String
  field :bio, type: String
  field :contact_info, type: String

  
  validates :email, presence: true, uniqueness: true

  include BCrypt

  def password=(new_password)
  	@password = Password.create(new_password)
  	self.password_hash = @password
  end


 

  has_many :posts

end


