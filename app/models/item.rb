class Item < ApplicationRecord
  belongs_to :list
  validates :name, presence: true
  has_one_attached :photo
end
