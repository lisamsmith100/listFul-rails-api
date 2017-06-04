class CreateTemplateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :template_items do |t|
      t.string :template_item_name
      t.string :template_item_category
      t.boolean :template_item_status
      t.boolean :template_item_reminder
      t.date :template_item_reminder_date

      t.timestamps
    end
  end
end
