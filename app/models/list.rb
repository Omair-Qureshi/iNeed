class List < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy
  has_many :shared_lists, dependent: :destroy
  has_many :users , through: :shared_lists
end
