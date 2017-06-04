class CreateListItems < ActiveRecord::Migration[5.0]
  def change
    create_table :list_items do |t|
      t.string :list_item_name
      t.string :list_item_category
      t.boolean :list_item_status
      t.boolean :list_item_reminder
      t.date :list_item_reminder_date

      t.timestamps
    end
  end
end
