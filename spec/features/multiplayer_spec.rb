
feature 'Multiplayer' do
  scenario 'two player can register and play the game' do

    register_2_players_and_start_game
 
    click_button 'Rock'
    
    click_button 'Paper'

    expect(page).to have_content 'Winner: Player2' 
  end
end