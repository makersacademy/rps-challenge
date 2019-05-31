require 'capybara/rspec'
require 'spec_helper'
require './lib/app'

feature 'testing homepage' do

  scenario 'Testing infrastructure works' do
    visit("/")
    # save_and_open_page
    expect(page).to have_content('Testing infrastructure working!')
  end
end