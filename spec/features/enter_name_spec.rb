feature 'player can enter their own name' do
  scenario 'player enters their name and starts a game' do
    visit('/')
    fill_in :player_1_name, with: 'Josh'
    click_button 'Play'
    expect(page).to have_content 'Josh vs. The Computer'
  end
end
