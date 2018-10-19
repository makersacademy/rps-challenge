require 'spec_helper'

feature 'playing rock,paper,scissors game' do

  scenario 'player can see the options' do
    visit '/'
    fill_in :player_name, with: 'Jane'
    click_button 'Start a game!'
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario "player can choose Rock,Paper or Scissors" do
    visit '/'
    fill_in :player_name, with: 'Jane'
    click_button 'Start a game!'
    click_button 'Paper'
    expect(page).to have_content "You chose Paper"
  end
end
