feature 'Player wins game against computer' do
  scenario 'Player chooses scissors, computer chooses rock' do
    player_weapon_choice('Scissors')
    expect(page).to have_content "COMPUTER WON!!!"
  end
  scenario 'Player 1 loses to player 2' do
    multi_player_names_and_confirm
    multi_player_pick_weapons_and_confirm('Rock', 'Paper')
    expect(page).to have_content "ANDY WON!!!"
  end
end
