require 'spec_helper'

feature "Player can choose a move" do
  scenario "One of Rock, Paper, or Scissors" do
    sign_in_and_begin
    expect(page).to have_content("Rock")
    expect(page).to have_content("Paper")
    expect(page).to have_content("Scissors")
  end
  scenario "Shows 'result is'" do
    sign_in_and_begin
    click_button("Submit")
    expect(page).to have_content("The winner is...")
  end
end