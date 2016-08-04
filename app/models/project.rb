class Project < ApplicationRecord
  validates :name, :owner, :category_id, :location, :stage, :main_social,
            :description, :looking_for, presence: true

  belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
  belongs_to :category
  has_many :memberships
  has_many :users, through: :memberships

  def self.random
    unless count.zero?
      project_id = rand(count) + 1
      find(project_id)
    end
  end
end
