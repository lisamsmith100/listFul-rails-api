# frozen_string_literal: true

class ListItemSerializer < ActiveModel::Serializer
  attributes :id, :list_item_name, :list_item_category, :list_item_status, :list_item_reminder, :list_item_reminder_date
  # belongs_to :lists
    # def user
    #   object.user.id
    # end

    # , :editable
    # def editable
    #   scope == object.user
    # end
end
