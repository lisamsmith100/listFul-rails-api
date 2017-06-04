class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :list_name
      t.string :list_category
      t.boolean :list_status
      t.boolean :list_reminder
      t.date :list_reminder_date

      t.timestamps
    end
  end
end
