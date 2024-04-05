class Product < ApplicationRecord
  validates :name, :desc, presence: true
  has_one_attached :image
end
