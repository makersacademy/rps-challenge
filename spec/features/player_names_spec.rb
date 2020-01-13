require 'capybara/rspec'

feature 'Testing for player names' do
  scenario 'player inputs name and can see it' do
    visit('/')
    fill_in :player_name, with: 'Sam Dalzell'
    click_button('Submit')
    expect(page).to have_content 'Sam Dalzell'
  end
end
