require "capybara/rspec"
require_relative "../../app"

Capybara.app = RPS

feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    click_button 'Single Player'
    fill_in :player_1_name, with: "Russell"
    click_button 'Submit'
    expect(page).to have_content "Russell vs. Robot"
  end
end
