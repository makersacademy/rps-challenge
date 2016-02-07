require 'spec_helper'
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'play rock, paper, scissors' do
  scenario 'play game' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    sign_in_and_play
    fill_in :player_choice, with: 'Scissors'
    click_button('Go!')
    expect(page).to have_content 'Computer wins!'
  end
end
