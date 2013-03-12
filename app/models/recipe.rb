class Recipe < ActiveRecord::Base
  attr_accessible :directions, :link, :name, :season
  validates :directions, :link, :name, presence: true
end
