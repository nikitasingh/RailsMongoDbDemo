class Article
  include Mongoid::Document
  field :name, type: String
  field :content, type: String
  field :new_content, type: String
  field :published_on, :type => Date
  validates_presence_of :name
  embeds_many :comments
     belongs_to :author
end
