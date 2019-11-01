require "spec_helper"

feature "Enter name(s)" do
  scenario "submitting names page displays correctly" do
    visit("/")
    expect(page).to have_content "Please enter player name(s)"
  end
end
