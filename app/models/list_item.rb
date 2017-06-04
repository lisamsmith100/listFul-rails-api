# frozen_string_literal: true

class ListItem < ApplicationRecord
  belongs_to :lists
  validates :list_item_name, :presence => true, :on => :create_table
  validates :list_id, presence: true
  validates :user_id, presence: true
end
