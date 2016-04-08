class Statistic < ActiveRecord::Base
  belongs_to :describable, :polymorphic => true
end
