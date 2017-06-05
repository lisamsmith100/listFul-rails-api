# frozen_string_literal: true

class Template < ApplicationRecord
  belongs_to :users
  has_many :template_items
  validates :template_name, :presence => true, :on => :create_table
  validates :user_id, presence: true
end
