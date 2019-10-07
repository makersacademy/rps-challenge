feature 'User can play rock paper scissors' do
  scenario "After selecting to play, user chooses rock and result is displayed on screen (computer stubbed to return Scissors)" do
    start_rps
    stub_const('RockPaperScissors::MOVES', ['SCISSORS'])
    click_button 'rock'
    expect(page).to have_content('Hi Andy, the results are in.... You chose ROCK, the computer chose SCISSORS. You WIN!')
  end

  scenario "After selecting to play, user chooses rock and result is displayed on screen (computer stubbed to return Rock)" do
    start_rps
    stub_const('RockPaperScissors::MOVES', ['ROCK'])
    click_button 'rock'
    expect(page).to have_content('Hi Andy, the results are in.... You chose ROCK, the computer chose ROCK. You DRAW!')
  end

  scenario "After selecting to play, user chooses rock and result is displayed on screen (computer stubbed to return Paper)" do
    start_rps
    stub_const('RockPaperScissors::MOVES', ['PAPER'])
    click_button 'rock'
    expect(page).to have_content('Hi Andy, the results are in.... You chose ROCK, the computer chose PAPER. You LOSE!')
  end
end
