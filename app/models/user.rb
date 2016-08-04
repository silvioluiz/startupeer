class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable
  has_many :memberships
  has_many :projects, through: :memberships

  def is_member_of?(project)
    projects.include?(project)
  end
end
