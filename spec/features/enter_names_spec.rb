require 'capybara/rspec'
require 'spec_helper'
require './lib/app'

feature 'In Homepage,' do

  scenario 'testing infrastructure works' do
    visit("/")
    # save_and_open_page
    expect(page).to have_content('Testing infrastructure working!')
  end

  scenario 'user can input name at start of the game' do
    visit('/')
    fill_in :player_name, with: 'Bob'
    click_on 'Submit'
    expect(page).to have_content 'Bob vs. The undefeated RPS Champion'
  end

end