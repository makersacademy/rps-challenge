require 'spec_helper'
require 'capybara/dsl'
require 'selenium-webdriver'

feature 'The player registers to play a game' do
  before do
    # include Capybara::DSL
    # Capybara.default_driver = :selenium
  end
  scenario 'They fill in the form' do
    register_and_play
    expect(page).to have_content('Player: Jeremy')
  end
end
