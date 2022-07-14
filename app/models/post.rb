class Post < ApplicationRecord
  validates :tittle, presence: true

  resourcify

  has_many :users, -> { distinct }, through: :roles, class_name: "User", source: :users
  has_many :creators, -> { where(roles: { name: :creator }) }, through: :roles, class_name: "User", source: :users
  has_many :editors, -> { where(roles: { name: :editor }) }, through: :roles, class_name: "User", source: :users

  def to_s
    title
  end
end
