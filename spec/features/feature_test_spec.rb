require "capybara/rspec"
require_relative "../../app"

Capybara.app = RockPaperScissors

feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_name, with: 'Gawain'
    click_button 'Submit'
    # save_and_open_page
    expect(page).to have_content "Gawain"
  end
end