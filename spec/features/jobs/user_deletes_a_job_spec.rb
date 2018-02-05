require "rails_helper"

describe "As a user" do
  scenario "I can delete a job" do
    company = Company.create!(name: "Opakawagalaga")
    job = Job.create!(title: "Work For Free", level_of_interest: 100, city: "Home", company_id: company.id)

    visit company_jobs_path(company, job)

    click_on "Delete"

    expect(page).to have_content("#{job.title} was successfully deleted!")
  end
end
