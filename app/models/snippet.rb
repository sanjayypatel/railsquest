class Snippet < ActiveRecord::Base
  # Snippets can have children snippets and belong to a parent
  has_many :children, class_name: "Snippet", foreign_key: 'parent_id'
  belongs_to :parent, class_name: "Snippet", foreign_key: 'parent_id'
  belongs_to :location
end
