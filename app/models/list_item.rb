# frozen_string_literal: true

class ListItem < ApplicationRecord
  belongs_to :list
  validates :list_item_name, :presence => true, :on => :create
end
