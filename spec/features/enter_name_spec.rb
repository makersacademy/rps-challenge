require 'spec_helper'

feature 'Enter names' do
  scenario 'Two player' do
    two_player_mode
    expect(page).to have_content 'Player1 vs. Player2'
  end
end