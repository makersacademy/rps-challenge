require_relative '../web_helper'
require './app/rps_web.rb'
require 'capybara-screenshot/rspec'
require 'capybara/rspec'

RSpec.feature "Game page", type: :feature do
  scenario 'displays players name' do
    register_name_submit
    expect(page).to have_text "Alfonso"
    save_and_open_page
  end
  scenario 'displays button choices' do
    register_name_submit
    page.should have_selector(:link_or_button, 'ROCK')
    page.should have_selector(:link_or_button, 'PAPER')
    page.should have_selector(:link_or_button, 'SCISSORS')
  end
  pending 'player can choose a button' do
  end
end
