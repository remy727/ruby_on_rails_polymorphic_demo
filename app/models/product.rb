# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :pictures, as: :imageable
end
