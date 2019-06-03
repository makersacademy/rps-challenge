require 'capybara/rspec'
require 'spec_helper'
require './app'
require './lib/player'
require 'features/web_helpers'

feature 'both players choose moves' do
  scenario 'Players picks a move' do
    sign_in_and_click_play
    click_on "Begin!"
    move_1 = ["Rock", "Paper", "Scissors"].sample
    click_on move_1
    move_2 = ["Rock", "Paper", "Scissors"].sample
    click_on move_2
    expect(page).to have_content("player_one_name chose #{move_1}")
    expect(page).to have_content("player_two_name chose #{move_2}")
  end
end
