class Recipe < ActiveRecord::Base
  attr_accessible :directions, :link, :name, :season, :source, :protein, :course
  validates :directions, :link, :source, :name, presence: true
end
