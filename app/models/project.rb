class Project < ApplicationRecord
  validates :name, :user, :category, :location, :stage, :main_social,
            :description, :looking_for, presence: true
end
