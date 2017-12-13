feature 'Informing the user of the result' do
  Game.create('Peter', 'cpu')
  scenario 'Informing the user of their own selection' do
    play_game
    expect(page).to have_content 'Peter, you have chosen \'Rock\''
  end
  scenario 'Informing the user of the computer\'s selection' do
    play_game
    expect(page).to have_content "The computer's selection is... Scissors"
  end
  scenario 'Telling the user the outcome of the game' do
    play_game
    expect(page).to have_content 'Congratulations, Peter, you won Rock-Paper-Scissors!'
  end
end
