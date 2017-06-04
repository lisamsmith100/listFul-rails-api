class CreateTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :templates do |t|
      t.string :template_name
      t.string :template_category
      t.boolean :template_status
      t.boolean :template_reminder
      t.date :template_reminder_date

      t.timestamps
    end
  end
end
