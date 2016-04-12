class Game < ActiveRecord::Base
  has_many :locations
  has_many :characters
end
