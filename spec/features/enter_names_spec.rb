require_relative './helper'
require "capybara/rspec"
require_relative "../../app"

Capybara.app = RPS

feature 'Enter names' do
  scenario 'player one enters name' do
    enter_names
    expect(page).to have_content 'What will it be Jordan!'
  end

  scenario 'player two enters name' do
    enter_names
    fill_in :choice1, with: 'rock'
    click_button 'Submit'
    expect(page).to have_content 'What will it be Shay!'
  end
end
