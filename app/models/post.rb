class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true

  scope :default_order, -> { order(id: :desc) }
end
