class Character < ActiveRecord::Base
  has_many :statistics, :as => :describable
  has_many :items
  belongs_to :game
end
