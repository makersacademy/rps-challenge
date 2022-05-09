require "capybara/rspec"
require_relative "../../app"

Capybara.app = RPS

feature 'Play again?' do
  scenario 'play again? should redirect to /pvr page' do
    visit('/')
    click_button 'Single Player'
    fill_in :player_1_name, with: "Russell"
    click_button 'Submit'
    expect(page).to have_content "Russell vs. Robot"
    click_button 'Rock'
    click_button 'Play again?'
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
