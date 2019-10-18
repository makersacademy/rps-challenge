require './rps_app'
require 'spec_helper'

feature 'Testing for game winner' do
  scenario 'tests if the winner of the game is output' do
    player_names_submitted
    visit('/game')
    expect(page).to have_content("adam beat computer")
  end
end
