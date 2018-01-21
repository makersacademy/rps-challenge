feature 'Player wins game against computer' do
  scenario 'Player chooses rock, computer chooses rock' do
    enter_name_and_confirm
    player_weapon_choice('Rock')
    expect(page).to have_content "IT'S A DRAW!!"
  end
  scenario 'Player 1 draws with player_2' do
    multi_player_names_and_confirm
    multi_player_pick_weapons_and_confirm('Rock', "Rock")
    expect(page).to have_content "IT'S A DRAW!!"
  end
end
