class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :nickname
      t.text :bio

      t.timestamps null: false
    end
  end
end
