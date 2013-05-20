class Recipe < ActiveRecord::Base
  attr_accessible :directions, :link, :name, :season, :source, :protein, :course, :featured, :user_id
  validates :directions, :link, :source, :name, presence: true

  belongs_to :user
  scope :featured, where(featured: true)


end
