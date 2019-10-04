feature 'enter a player name' do
  scenario 'player enter name in form' do
    visit '/'
    fill_in :player, with: 'Player'
    click_button 'Submit'
  end
end
