module RegistriesHelper

  def registry_state(state)
    state ? 'Open' : 'Closed'
  end
end
