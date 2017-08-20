require_relative '../web_helper'
require './app/rps_web.rb'
require 'capybara-screenshot/rspec'
require 'capybara/rspec'

RSpec.feature "Home page", type: :feature do
  scenario 'has welcome text' do
    visit '/'
    expect(page).to have_text 'Player, please enter your name!'
  end
  scenario 'player can enter name' do
    visit '/'
    expect(page).to have_field 'player_name'
  end
end
