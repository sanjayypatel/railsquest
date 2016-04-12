class AddParentIdToSnippet < ActiveRecord::Migration
  def change
    add_reference :snippets, :parent, index: true, foreign_key: true
  end
end
