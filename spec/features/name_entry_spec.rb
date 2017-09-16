RSpec.feature 'Enter a player name' do
  scenario 'fill in name form with Marcus' do
    visit('/')
    fill_in :player_name, with: "Marcus"
    click_button 'Submit'
    expect(page).to have_content "new player: Marcus"
  end
end
