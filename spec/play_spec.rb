require "spec_helper"

feature "play RPS" do
  before do
    visit "/"
    fill_in "name", with: "Mrtl"
    click_button "Submit"
  end

  scenario "see options for r p s" do
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario "choose rock paper or scissors" do
    click_button "Rock"
    expect(page).to have_content "you chose Rock!"
  end
end
