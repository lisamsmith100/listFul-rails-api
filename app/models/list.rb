# frozen_string_literal: true

class List < ApplicationRecord
  belongs_to :users
  validates :list_name, :presence => true, :on => :create_table
  validates :user_id, presence: true
end
