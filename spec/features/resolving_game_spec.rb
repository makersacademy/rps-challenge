feature 'Resolve the game' do

  scenario 'Player can start a new game once the first one ends' do
    visit('/')
    fill_in :player_1_name, with: 'Alec'
    click_button 'Ready'
    click_button "Scissors"
    expect(page).to have_button 'Play again'
  end
  
end
