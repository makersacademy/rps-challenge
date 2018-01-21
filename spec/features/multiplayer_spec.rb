feature 'Multiplayer sign-in' do
  scenario 'Player enter their names and this is displayed on-screen' do
    enter_two_players_and_submit
    expect(page).to have_content("Welcome to Rock, Paper, Scissors Ed and Ted")
  end
end

feature 'Multiplayer choosing a move' do
  scenario 'Both players can choose a move' do
    enter_two_players_and_submit
    click_button 'Rock'
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")    
  end

  scenario 'Both players get confirmation of their move' do
    enter_two_players_and_submit
    click_button 'Rock'
    click_button 'Paper'
    expect(page).to have_content("Ed chose rock")
    expect(page).to have_content("Ted chose paper")
  end

  scenario 'Both players get confirmation of their move' do
    enter_two_players_and_submit
    click_button 'Rock'
    click_button 'Paper'
    expect(page).to have_content("Ed chose rock")
    expect(page).to have_content("Ted chose paper")
  end
end

feature 'Multi-player determining winner' do
  scenario 'Player 1 chooses winning move and is told they won' do
    enter_two_players_and_submit
    click_button 'Paper'
    click_button 'Rock'
    expect(page).to have_content("Ed won!")
  end

  scenario 'Player 2 chooses winning move and is told they won' do
    enter_two_players_and_submit
    click_button 'Paper'
    click_button 'Scissors'
    expect(page).to have_content("Ted won!")
  end

  scenario 'Both choose the same move' do
    enter_two_players_and_submit
    click_button 'Paper'
    click_button 'Paper'
    expect(page).to have_content("No one won!")
  end
end