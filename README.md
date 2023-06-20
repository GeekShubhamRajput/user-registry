# Problem statement

Create a Ruby on Rails application that would allow a coordinator to track participants across multiple registries.

A registry is uniquely identified by:
name
location
Registry can be in an open or a closed state.

Each registry, can have multiple coordinators where each coordinator is identified uniquely by their email address. Coordinators also have:
name
phone number
Same coordinator can be assigned to multiple registries.

Participant is identified by:
name
gender
date of birth
A participant can be enrolled in multiple open registries. But, they can't be enrolled on a same registry more than once.

For contacting a participant later, during enrollment following information is needed:
date of enrollment
method of contact (phone or email)
remarks
coordinator that performed the enrollment.
As a user, coordinator should be able to setup registries and manage associated coordinators.

A coordinator can manage all coordinators and participants.

Coordinator can enroll participants into a registry and see the list of participants for a given registry, grouped by the coordinator that enrolled them.

Authentication/Authorization is not required.

Additional Questions
1. Provide sql for aggregate count of participants by year of birth.
2. Provide sql for aggregate count of participants by coordinator and gender.
3. Export participants for each coordinator in a csv format.
