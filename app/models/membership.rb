class Membership < ApplicationRecord
  enum status: [ :pending, :approved, :reject ]

  belongs_to :user
  belongs_to :project
end
