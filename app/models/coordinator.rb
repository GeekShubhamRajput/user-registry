class Coordinator < ApplicationRecord

  validates :name, :email, presence: true
  validates :email, uniqueness: true
  
  has_and_belongs_to_many :registries
  has_many :enrollments
  has_many :participants, through: :enrollments

  attr_accessor :registry_id
end
