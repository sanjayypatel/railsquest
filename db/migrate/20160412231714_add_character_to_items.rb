class AddCharacterToItems < ActiveRecord::Migration
  def change
    add_reference :items, :character, index: true, foreign_key: true
  end
end
