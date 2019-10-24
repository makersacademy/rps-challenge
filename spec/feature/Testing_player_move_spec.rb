require './rps_app'
require 'spec_helper'

feature 'Testing for game winner' do
  scenario 'tests if the winner of the game is output' do
    player_names_submitted
    visit('/game')
    expect(page).to have_content("Adam beat computer")
  end
end

feature 'Testing for game draw' do
  scenario 'tests if the computer and players move are the same' do
    player_names_submitted
    visit('/draw')
    expect(page).to have_content("Adam drew with the computer")
  end
end
