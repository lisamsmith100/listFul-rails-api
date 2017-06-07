# frozen_string_literal: true

# template_item model
class TemplateItem < ApplicationRecord
  belongs_to :template
  validates :template_item_name, :presence => true, :on => :create
end
