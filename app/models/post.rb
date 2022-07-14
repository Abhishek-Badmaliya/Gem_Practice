class Post < ApplicationRecord
  validates :tittle, presence: true

  def to_s
    title
  end
end
