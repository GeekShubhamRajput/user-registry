class Participant < ApplicationRecord
  
  validates :name, :gender, :date_of_birth, presence: true
  
  has_many :enrollments
  has_many :registries, through: :enrollments

  enum gender: [ :male, :female ]
end
