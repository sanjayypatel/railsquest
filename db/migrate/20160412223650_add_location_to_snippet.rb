class AddLocationToSnippet < ActiveRecord::Migration
  def change
    add_reference :snippets, :location, index: true, foreign_key: true
  end
end
