module EnrollmentsHelper
  def registry_options
    options_for_select(Registry.all.map { |r| [r.name, r.id] })
  end

  def participant_options
    options_for_select(Participant.all.map { |r| [r.name, r.id] })
  end

  def coordinator_options
    options_for_select(Coordinator.all.map { |r| [r.name, r.id] })
  end
end
