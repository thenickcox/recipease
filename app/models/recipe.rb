class Recipe < ActiveRecord::Base
  attr_accessible :directions, :link, :name, :season
end
