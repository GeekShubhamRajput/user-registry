module CoordinatorsHelper
  def options_for_registries_select(registries)
    options_for_select(registries.map { |r| [r.name, r.id] })
  end
end
