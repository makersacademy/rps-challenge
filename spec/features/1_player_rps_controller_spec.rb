require 'spec_helper'
require './app/controllers/1_player_rps_controller'

feature 'RPS' do

  scenario 'expect home page to have content (Enter Player 1)' do
    visit('/')
    expect(page).to have_content('Enter Player 1')
  end

end
