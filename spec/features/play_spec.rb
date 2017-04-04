require 'spec_helper'

feature "playing a game" do
  before do
    sign_in_and_play
  end
  #as a user,
  #so I can play a game
  #I want to see the shapes I can play
  scenario "See the attack options" do
    expect(page).to have_content "Rock"
    expect(page).to have_content "Paper"
    expect(page).to have_content "Scissors"
  end

end