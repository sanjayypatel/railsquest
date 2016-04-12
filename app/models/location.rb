class Location < ActiveRecord::Base
  belongs_to :game
  has_many :snippets
  has_many :items
end
