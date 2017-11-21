FactoryBot.define do
  factory :action do
    id { SecureRandom.uuid }
    description 'Fix login problem'
    sort_order '1000'
    created_at '2017-11-20 10:30:00'
    updated_at '2017-11-20 10:30:00'
    planned_on ''
    completed_on ''
  end
end
