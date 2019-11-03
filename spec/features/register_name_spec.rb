require 'spec_helper'

feature 'Player enters and sees their name' do
  scenario 'Player submits name' do
    register_and_play
    expect(page).to have_content 'player_name'
  end
end
