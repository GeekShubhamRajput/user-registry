class Registry < ApplicationRecord
  validates :name, :location, presence: true

  has_and_belongs_to_many :coordinators
end
