require 'capybara/rspec'
require 'spec_helper'
require './app'
require './lib/player'
require 'features/web_helpers'

feature 'entering names' do
  scenario 'Player name submission is displayed' do
    sign_in_and_click_play
    expect(page).to have_content "player_one_name vs. player_two_name"
  end
end
