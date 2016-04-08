class AddDescribableToStatistics < ActiveRecord::Migration
  def change
    add_column :statistics, :describable_id, :integer, index: true
    add_column :statistics, :describable_type, :string
  end
end
