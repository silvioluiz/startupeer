class Project < ApplicationRecord
  validates :name, :user, :category_id, :location, :stage, :main_social,
            :description, :looking_for, presence: true

  belongs_to :category
end
