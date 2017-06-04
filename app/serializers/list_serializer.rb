# frozen_string_literal: true

class ListSerializer < ActiveModel::Serializer
  attributes :id, :list_name, :list_category, :list_status, :list_reminder, :list_reminder_date

  def user
    object.user.id
  end

  # , :editable
  # def editable
  #   scope == object.user
  # end
end
