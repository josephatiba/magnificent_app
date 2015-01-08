class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :link, type: String
  field :description, type: String
  belongs_to :user

  def date_published
  	# technically we don't need self. because its an instance variable so it's implied
  	self.created_at.localtime.strftime("%A, %B %-d, %Y at %l:%M %p")
  end

  def date_added
    created_at.localtime.strftime("%-m/%-d/%Y | %l:%M %p")
  end

end
