require "capybara/rspec"
require_relative "../../app"

Capybara.app = RockPaperScissors

feature 'Feature tests' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_name, with: 'Gawain'
    click_button 'Submit'
    # save_and_open_page
    expect(page).to have_content "Gawain"
  end

  scenario 'there is a choice of rock, paper, scissors' do
    visit('/')
    fill_in :player_name, with: 'Gawain'
    click_button 'Submit'
    # save_and_open_page
    find_by_id("Rock").click
    find_by_id("Paper").click
    find_by_id("Scissors").click
  end

  scenario 'user chooses rock' do
    visit('/')
    fill_in :player_name, with: 'Gawain'
    click_button 'Submit'
    # save_and_open_page
    find_by_id("Rock").click
  end

end