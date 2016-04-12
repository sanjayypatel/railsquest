class Item < ActiveRecord::Base
  has_many :statistics, :as => :describable
  belongs_to :character
  belongs_to :location
end
