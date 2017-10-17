require_relative '../../app.rb'

feature 'Player can select options' do

  scenario 'Player1 selects rock' do
    sign_in_and_play_single_player
    click_button 'rock'
    expect(page).to have_content("The results are:")
  end

  scenario 'Player1 selects paper' do
    sign_in_and_play_single_player
    click_button 'paper'
    expect(page).to have_content("The results are:")
  end

  scenario 'Player1 selects scissors' do
    sign_in_and_play_single_player
    click_button 'scissors'
    expect(page).to have_content("The results are:")
  end

  scenario 'Player1 selects lizard' do
    sign_in_and_play_single_player
    click_button 'lizard'
    expect(page).to have_content("The results are:")
  end

  scenario 'Player1 selects spock' do
    sign_in_and_play_single_player
    click_button 'spock'
    expect(page).to have_content("The results are:")
  end


end

feature 'Player1 restarts the game' do

  scenario 'Return to home page at end of game' do
    sign_in_and_play_single_player
    first_player_chooses_rock
    click_button 'Restart'
    expect(page).to have_content("ROCK, PAPER, SCISSORS")
  end
end
