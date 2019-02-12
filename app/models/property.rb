class Property < ApplicationRecord
  belongs_to :user
  validates :title, :description, :address, :bedroom, :bathroom, :size, :price, presence: true
  validates :size, :bedroom, :bathroom, numericality: { only_integer: true }
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :title, length: { in: 5..50 }
end
