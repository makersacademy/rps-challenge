feature 'Player wins game against computer' do
  scenario 'Player chooses scissors, computer chooses rock' do
    enter_name_and_confirm
    player_weapon_choice('Scissors')
    expect(page).to have_content "COMPUTER WON!!!"
  end
end
