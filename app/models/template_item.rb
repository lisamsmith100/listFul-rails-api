# frozen_string_literal: true

class TemplateItem < ApplicationRecord
  belongs_to :templates
  validates :template_item_name, :presence => true, :on => :create_table
  validates :template_id, presence: true
  validates :user_id, presence: true
end
