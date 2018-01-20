feature 'Player wins game against computer' do
  scenario 'Player chooses paper, computer chooses rock' do
    enter_name_and_confirm
    player_weapon_choice('Paper')
    expect(page).to have_content "LEIGH-ANN WON!!!"
  end
end
