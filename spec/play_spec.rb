require "spec_helper"

feature "play RPS" do
  before do
    visit "/"
    fill_in "name", with: "Mrtl"
    click_button "Submit"
  end

  scenario "see options for r p s" do
    expect(page).to have_content "Rock"
    expect(page).to have_content "Paper"
    expect(page).to have_content "Scissors"
  end
end
