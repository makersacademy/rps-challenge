feature 'Main game page' do
  scenario 'Displays the player name' do
    visit '/'
    fill_in :player_name, with: 'Player'
    click_button 'Submit'
    expect(page).to have_content 'Player, choose your attack:'
  end
end
