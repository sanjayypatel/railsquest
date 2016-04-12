class AddGameToCharacter < ActiveRecord::Migration
  def change
    add_reference :characters, :game, index: true, foreign_key: true
  end
end
