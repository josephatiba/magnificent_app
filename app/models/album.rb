class Album
  include Mongoid::Document
  field :name, type: String
  field :date, type: String
  field :description, type: String
  belongs_to :user
end
