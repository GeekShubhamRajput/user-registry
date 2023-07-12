require 'csv'
module ParticipantCoordinatorCSVConcern

  def export_participants_for_coordinators
    coordinators = Coordinator.all

    coordinators.each do |coordinator|
      participants = coordinator.participants

      CSV.open("#{coordinator.name}_participants.csv", 'w') do |csv|
        csv << ['Name', 'Gender', 'Date of Birth', 'Date of Enrollment', 'Method of Contact', 'Remarks']

        participants.each do |participant|
          enrollments = participant.enrollments.where(coordinator_id: coordinator.id)

          enrollments.each do |enrollment|
            csv << [
              participant.name,
              participant.gender,
              participant.date_of_birth,
              enrollment.date_of_enrollment,
              enrollment.method_of_contact,
              enrollment.remarks
            ]
          end
        end
      end
    end
  end
end
