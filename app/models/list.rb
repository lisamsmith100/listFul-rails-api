# frozen_string_literal: true

class List < ApplicationRecord
  belongs_to :user
  has_many :list_items

  validates :list_name, :presence => true, :on => :create
  validates :user_id, presence: true
end
