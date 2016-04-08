class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.string :name
      t.integer :value
      t.integer :minimum
      t.integer :maximum
      t.string :unit

      t.timestamps null: false
    end
  end
end
