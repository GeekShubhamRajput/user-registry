class Registry < ApplicationRecord
  validates :name, :location, presence: true

  has_and_belongs_to_many :coordinators
  has_many :enrollments
  has_many :participants, through: :enrollments

  scope :open_state, -> { where(state: true) }
end
