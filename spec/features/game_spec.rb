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
end
