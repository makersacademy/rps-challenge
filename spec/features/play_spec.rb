require 'spec_helper'

feature "playing a game" do
  before do
    sign_in_and_play
  end
  #as a user,
  #so I can play a game
  #I want to see the shapes I can play
  scenario "See the attack options" do
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  # as a user,
  # so I can play a game,
  # I want to choose an attack to play
  scenario "choose an attack" do
    click_button "Rock"
    expect(page).to have_content "Rocky picked rock."

  end

end