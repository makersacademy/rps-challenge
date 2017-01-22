WINNER_MESSAGE = "you won the game!"
NO_WINNERS_MESSAGE = "There are no winners!"

feature 'Winning a game' do
  scenario 'player wins game' do
    register_process
    click_button('ROCK')
    expect(page).to have_text()
  end
end
