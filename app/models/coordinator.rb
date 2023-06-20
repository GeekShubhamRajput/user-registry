class Coordinator < ApplicationRecord

  validates :name, :email, presence: true
  validates :email, uniqueness: true
  
  has_and_belongs_to_many :registries
end
