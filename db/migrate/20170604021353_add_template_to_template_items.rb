class AddTemplateToTemplateItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :template_items, :template, foreign_key: true
  end
end
