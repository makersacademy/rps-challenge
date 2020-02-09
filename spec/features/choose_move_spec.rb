require 'spec_helper'

feature "Player can choose a move" do
  scenario "One of Rock, Paper, or Scissors" do
    sign_in_and_begin
    expect(page).to have_content("Rock")
    expect(page).to have_content("Paper")
    expect(page).to have_content("Scissors")
  end
  scenario "Submmit takes to results page, shows 'result is'" do
    sign_in_and_begin
    choose_scissors_and_submit
    expect(page).to have_content("The winner is...")
  end
end
