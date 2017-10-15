require 'capybara/rspec'
require_relative '../../lib/app'
require_relative 'spec_helper'

feature 'Beginning the game' do
  scenario 'player entering name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome to Rock Paper Scissors, Hugo!'
  end
end
