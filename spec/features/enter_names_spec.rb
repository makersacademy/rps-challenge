require 'capybara/rspec'
require 'spec_helper'
require './lib/app'

feature 'testing homepage' do

  scenario 'Testing infrastructure works' do
    visit("/")
    # save_and_open_page
    expect(page).to have_content('Testing infrastructure working!')
  end

  scenario 'users inputs name game' do
    visit('/')
    fill_in :player_name, with: 'Bob'
    click_on 'Submit'
    expect(page).to have_content 'Bob vs. The RPS Champion'
  end

end