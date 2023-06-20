class Enrollment < ApplicationRecord
  
  validates :participant_id, uniqueness: { scope: :registry_id }
  
  belongs_to :coordinator
  belongs_to :registry
  belongs_to :participant
end
