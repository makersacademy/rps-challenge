require 'spec_helper'

feature 'Enter player name' do

  scenario 'the player enters a names at start of game' do
    sign_in_and_play
    expect(page).to have_content "Batman vs. Jigsaw"
  end
end
