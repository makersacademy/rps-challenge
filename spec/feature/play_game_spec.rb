require './app'

feature RockPaperScissors do
  scenario 'Result Page Loads' do
    sign_in_and_play
    play_round
    expect(page).to have_button 'Play Again'
  end

  scenario 'Playing Multiple Rounds' do
    sign_in_and_play
    play_multiple_rounds
    expect(page).to have_button 'Play Again'
  end
end
