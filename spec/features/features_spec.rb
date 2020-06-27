feature 'Enter names' do
  scenario 'Player enters their name and is welcomed to the game' do
    visit('/')
    fill_in :player_1_name, with: 'Katie'
    click_button 'Submit'
    expect(page).to have_content 'Welcome, Katie'
  end
end
