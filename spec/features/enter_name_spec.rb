require 'player'

feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_name, with: 'Simone'
    click_button 'Submit'
    expect(page).to have_content 'Simone'
  end
end
