feature 'Enter Player Name' do
  scenario 'player enters name before entering the game' do
    visit ('/')
    fill_in :player_name, with: 'Joe'
    click_button 'Enter the Game'
    expect(page).to have_content 'Welcome Joe'
  end
end
