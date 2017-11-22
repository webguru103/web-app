FactoryBot.define do
  factory :message_template do
    type 'email'
    subject "(<Team.Name> today's update (<today's date>)"
    body 'See requirements spec'
    sender 'updates@actioned.com'
  end
end
