require 'spec_helper'

feature ' adding in player name' do
  scenario ' add in players name to start' do
    create_player
    expect(page).to have_content 'Player Mark created'
  end
end
