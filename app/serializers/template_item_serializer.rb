# frozen_string_literal: true

# Template Item Serializer
class TemplateItemSerializer < ActiveModel::Serializer
  attributes :id, :template_item_name, :template_item_category, :template_item_status, :template_item_reminder, :template_item_reminder_date
end
