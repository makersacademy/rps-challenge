require 'spec_helper'
require './app'

feature "End game" do
  scenario "Thanks player" do
    sign_in_and_play
    click_button "Rock"
    click_button "Play again"
    expect(page).to have_content "Choose an option to play:"
    expect(page).to have_content "Rock"
    expect(page).to have_content "Paper"
    expect(page).to have_content "Scissors"
  end
end
