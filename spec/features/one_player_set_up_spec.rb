feature 'One Player Set Up' do

  scenario 'chooses 1 player mode and enters name' do
    one_player_battle_setup
    expect(page).to have_content 'Sir R Spec'
  end

  scenario 'player 1 picks their move' do
    one_player_battle_setup
    click_button "Rock"
    expect(page). to have_content 'Computer has chosen its move'
  end

end
