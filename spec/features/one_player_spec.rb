feature 'One Player Mode' do

  scenario 'chooses 1 player mode and enters name' do
    one_player_battle_setup
    expect(page).to have_content 'Sir R Spec'
  end

  scenario 'player 1 picks Rock, switches turns with computer' do
    one_player_battle_setup
    click_button "Rock"
    expect(page). to have_content 'Computer has chosen its move'
  end

  scenario 'player 1 picks Paper, switches turns with computer' do
    one_player_battle_setup
    click_button "Paper"
    expect(page). to have_content 'Computer has chosen its move'
  end

  scenario 'player 1 picks Scissors, switches turns with computer' do
    one_player_battle_setup
    click_button "Scissors"
    expect(page). to have_content 'Computer has chosen its move'
  end

  scenario 'player 1 picks Spock, switches turns with computer' do
    one_player_battle_setup
    click_button "Spock"
    expect(page). to have_content 'Computer has chosen its move'
  end

  scenario 'player 1 picks Lizard, switches turns with computer' do
    one_player_battle_setup
    click_button "Lizard"
    expect(page). to have_content 'Computer has chosen its move'
  end

  scenario 'player 1 views result' do
    one_player_battle_setup
    click_button "Rock"
    click_button "Continue"
    expect(page). to have_content "Who Won?"
  end

end
