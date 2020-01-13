require 'capybara/rspec'

feature 'player chooses action' do
  scenario 'player can choose between rock, paper and scissors' do
    visit('/')
    fill_in :player_name, with: 'Daisy'
    click_button 'Submit'
    expect(page).to have_content "Choose your action: rock, paper or scissors"
  end
end
