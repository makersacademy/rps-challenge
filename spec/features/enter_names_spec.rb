require 'capybara/rspec'
require 'spec_helper'
require './app'

feature 'In Homepage,' do

  scenario 'testing infrastructure works' do
    visit("/")
    expect(page).to have_content('Enter your name to start game')
  end

  scenario 'user can input name at start of the game' do
    visit('/')
    fill_in :player_name, with: 'Bob'
    click_on 'Submit'
    expect(page).to have_content 'Bob vs. The Champion'
  end

end