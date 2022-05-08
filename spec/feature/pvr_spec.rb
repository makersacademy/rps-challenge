require "capybara/rspec"
require_relative "../../app"

Capybara.app = RPS

feature 'Choose R/P/S' do
  scenario 'Choosing rock' do
    visit('/')
    click_button 'Single Player'
    fill_in :player_1_name, with: "Russell"
    click_button 'Submit'
    expect(page).to have_content "Russell vs. Robot"
    click_button 'Rock'
  end

  scenario 'Choosing paper' do
    visit('/')
    click_button 'Single Player'
    fill_in :player_1_name, with: "Russell"
    click_button 'Submit'
    expect(page).to have_content "Russell vs. Robot"
    click_button 'Paper'
  end

  scenario 'Choosing scissors' do
    visit('/')
    click_button 'Single Player'
    fill_in :player_1_name, with: "Russell"
    click_button 'Submit'
    expect(page).to have_content "Russell vs. Robot"
    click_button 'Scissors'
  end
end
