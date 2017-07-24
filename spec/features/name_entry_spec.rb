require 'spec_helper'

feature 'Can enter a name and start a game' do
  scenario 'Player enters name and gets directed to a game page' do
    sign_in_and_play
    expect(page).to have_content 'Player Name'
  end
end
