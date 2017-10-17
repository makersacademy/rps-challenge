require_relative '../../app.rb'

feature 'Both players can select weapons' do
  scenario 'Players can select rock' do
    sign_in_and_play_multi_player
    click_button 'rock'
    click_button 'rock'
    expect(page).to have_content("The results are:")
  end

  scenario 'Players can select paper' do
    sign_in_and_play_multi_player
    click_button 'paper'
    click_button 'paper'
    expect(page).to have_content("The results are:")
  end

  scenario 'Players can select scissors' do
    sign_in_and_play_multi_player
    click_button 'scissors'
    click_button 'scissors'
    expect(page).to have_content("The results are:")
  end

  scenario 'Players can select spock' do
    sign_in_and_play_multi_player
    click_button 'spock'
    click_button 'spock'
    expect(page).to have_content("The results are:")
  end

  scenario 'Players can select lizard' do
    sign_in_and_play_multi_player
    click_button 'lizard'
    click_button 'lizard'
    expect(page).to have_content("The results are:")
  end

end

feature 'Players can view results after having their turns' do

  scenario 'Results show draw when Player1, Player2 selects rock' do
    sign_in_and_play_multi_player
    click_button 'rock'
    click_button 'rock'
    expect(page).to have_content("The results are: Draw!")
  end

  scenario 'Results show winner when Player1 selects paper, Player2 selects scissors' do
    sign_in_and_play_multi_player
    click_button 'paper'
    click_button 'scissors'
    expect(page).to have_content("The results are: Andrew is the winner")
  end
end

feature 'Return to home page at end of game' do
  scenario 'Player restarts the game' do
    sign_in_and_play_multi_player
    first_player_chooses_rock
    second_player_chooses_scissors
    click_button 'Restart'
    expect(page).to have_content("ROCK, PAPER, SCISSORS")
  end

end
