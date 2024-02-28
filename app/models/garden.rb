class Garden < ApplicationRecord
  belongs_to :user
  has_one_attached :main_photo
  has_many_attached :sub_photos

  validates :name, presence: true
  validates :description, presence: true
  validates :long_description, presence: true
  # validates :price, numericality: { greater_than_or_equal_to: 0 }
  # validates :address, presence: true
end
