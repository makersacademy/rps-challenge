feature 'Player wins game against computer' do
  scenario 'Player chooses rock, computer chooses rock' do
    enter_name_and_confirm
    player_weapon_choice('Rock')
    expect(page).to have_content "IT'S A DRAW!!"
  end
end
