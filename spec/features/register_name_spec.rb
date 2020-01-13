require 'capybara/rspec'

feature 'register a player name' do
  scenario 'allow player to submit name' do
    visit('/')
    fill_in :player_name, with: 'sarita'
    click_button 'Submit'
    expect(page).to have_content "sarita"
  end
end
