class HomeController < ApplicationController
  def index
    @participant_count_by_birth_yr = Participant.group("extract(year from date_of_birth)").count
    @participant_count_by_cordinator_and_gender = Participant.joins(enrollments: :coordinator).group('coordinators.id', :gender).count
  end
end
