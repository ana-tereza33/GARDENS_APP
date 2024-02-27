class Booking < ApplicationRecord
  STATUS = ["pending", "accepted", "rejected"]

  belongs_to :user
  belongs_to :garden

  validates :status, inclusion: { in: STATUS }
end
