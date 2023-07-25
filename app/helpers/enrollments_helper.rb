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

  def contact_method_options
    options_for_select([['Phone', 'contact_via_phone'], ['Email', 'contact_via_email']])
  end
end
