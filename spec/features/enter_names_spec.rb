feature 'Players can enter names' do
  scenario 'Player 1 plays as Smoky, Player 2 as Penelope' do
    visit('/')
    fill_in :player_one_name, with: 'Smoky'
    fill_in :player_two_name, with: 'Penelope'
    click_button 'Play Game'
    expect(page).to have_content 'Smoky vs. Penelope'
  end
end