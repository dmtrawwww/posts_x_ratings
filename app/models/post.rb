class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :ratings

  validates_presence_of :title, :content

  def current_rating
  	self.ratings.average(:rating).to_f.round(2)
  end
end
