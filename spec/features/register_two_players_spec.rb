feature 'Multiplayer' do
  scenario 'two player can register and play the game' do

    register_2_players_and_start_game
    click_button 'rock'
    click_button 'paper'
    expect(page).to have_content 'Winner: Player2' 
  end
end
