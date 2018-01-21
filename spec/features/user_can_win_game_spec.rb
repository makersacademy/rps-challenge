feature 'Player wins game against computer' do
  scenario 'Player chooses paper, computer chooses rock' do
    enter_name_and_confirm
    player_weapon_choice('Paper')
    expect(page).to have_content "LEIGH-ANN WON!!!"
  end
  scenario 'Player_1 beats player_2' do
    multi_player_names_and_confirm
    multi_player_pick_weapons_and_confirm('Paper', 'Rock')
    expect(page).to have_content "LEIGH-ANN WON!!!"
  end
end
