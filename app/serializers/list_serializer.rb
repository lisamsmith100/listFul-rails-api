# frozen_string_literal: true

class ListSerializer < ActiveModel::Serializer
  attributes :id, :list_name, :list_category, :list_status, :list_reminder, :list_reminder_date
  # has_one :user
  # has_many :list_items
  # def user
  #   object.user.id
  # end

  # , :editable
  # def editable
  #   scope == object.user
  # end
end
