# frozen_string_literal: true

class TemplateSerializer < ActiveModel::Serializer
  attributes :id, :template_name, :template_category, :template_status, :template_reminder, :template_reminder_date

  def user
    object.user.id
  end

  # , :editable
  # def editable
  #   scope == object.user
  # end
end
