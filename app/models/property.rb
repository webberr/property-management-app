class Property < ApplicationRecord
  belongs_to :user
  has_many :leases
  has_many_attached :photos
  
  validates :title, :description, :address, :bedroom, :bathroom, :size, :price, presence: true, allow_blank: true
  # validates :size, :bedroom, :bathroom, numericality: { only_integer: true }
  # validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :title, length: { in: 5..50 }
end
