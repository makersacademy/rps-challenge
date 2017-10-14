require 'spec_helper'

#As a marketeer
#So that I can enjoy myself away from the daily grind
#I would like to be able to play rock/paper/scissors

feature 'playing a game' do
before do
  visit ('/')
  fill_in :player_name, with: "Tim"
  click_button 'Submit'
end
  scenario 'see the rps options' do
    expect(page).to have_content "Rock"
    expect(page).to have_content "Paper"
    expect(page).to have_content "Scissors"
  end
end
