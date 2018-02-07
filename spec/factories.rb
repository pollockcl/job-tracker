FactoryBot.define do
  factory :company do
    name "Opakawagalaga"
  end

  factory :category do
    title "Eupanifahorious"
  end

  factory :job do
    title "Work For Free"
    level_of_interest 100
    city "Home"
    category
    company
  end

  factory :comment do
    body "Co-Meant"
    job
  end
end
