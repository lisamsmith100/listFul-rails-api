# frozen_string_literal: true

class TemplateItemSerializer < ActiveModel::Serializer
  attributes :id, :template_item_name, :template_item_category, :template_item_status, :template_item_reminder, :template_item_reminder_date

  def user
    object.user.id
  end

  # , :editable
  # def editable
  #   scope == object.user
  # end
end
