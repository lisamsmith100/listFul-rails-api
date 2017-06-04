class AddListToListItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :list_items, :list, foreign_key: true
  end
end
