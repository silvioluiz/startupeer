class Project < ApplicationRecord
  validates :name, :user, :category_id, :location, :stage, :main_social,
            :description, :looking_for, presence: true

  belongs_to :category

  def self.random
    unless count.zero?
      project_id = rand(count) + 1
      find(project_id)
    end
  end
end
