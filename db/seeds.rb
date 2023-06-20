registry = Registry.create(name: "Time", location: "Indore")
coordinator = Coordinator.new(email: "shubham@gmail.com", name: "shubham", phone_number: "7415844542")
registry.coordinators << coordinator
registry.save

