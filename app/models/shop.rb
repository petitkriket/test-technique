# frozen_string_literal: true

class Shop < ApplicationRecord
  # == Relations
  has_many :products, dependent: :delete_all
  has_and_belongs_to_many :taxons

  # == Scopes
  scope :available_for_order, -> { where(['`shops`.available_on <= ?', DateTime.now]) }
  scope :unavailable_for_order, -> { where(['`shops`.available_on >= ?', DateTime.now]) }
end
