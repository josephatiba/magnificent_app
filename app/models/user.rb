class User
  include Mongoid::Document
  field :name, type: String
  field :bio, type: String
  field :contact_info, type: String
end


