class Booking < ApplicationRecord
  STATUS = ["peding", "accepted", "rejected"]

  belongs_to :user
  belongs_to :garden

  validates :status, inclusion: { in: STATUS }
end
