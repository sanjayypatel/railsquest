class Character < ActiveRecord::Base
  has_many :statistics, :as => :describable
end
