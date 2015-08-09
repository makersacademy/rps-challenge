require 'spec_helper'
require 'helper'

feature 'Playing a two player game' do
  scenario 'page asks users to pick a move' do
    setup_two_players_gameplay
    browser(:one) do
      expect(page).to have_content 'Pick a move Leon'
    end
  end
end