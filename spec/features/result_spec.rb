require 'capybara/rspec'

feature 'player chooses action' do
  scenario 'player chooses rock' do
    visit('/')
    fill_in :player_name, with: 'Daisy'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content "You played Rock"
  end
end
