FactoryGirl.define do
  factory :event do
    name 'Biotech Event'
    description 'Awesome event'
    start_date Time.zone.now
    end_date Time.zone.now
  end
end
