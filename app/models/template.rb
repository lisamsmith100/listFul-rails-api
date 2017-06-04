# frozen_string_literal: true

class Template < ApplicationRecord
  belongs_to :users
  validates :template_name, :presence => true, :on => :create_table
  validates :user_id, presence: true
end
