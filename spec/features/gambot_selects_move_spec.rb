feature 'GameBot selects' do 
  gamebot_select = [
    "GameBot picked: ROCK",
    "GameBot picked: PAPER",
    "GameBot picked: SCISSORS",
    "GameBot picked: LIZARD",
    "GameBot picked: SPOCK"
  ]
  
  scenario 'selction is confirmed' do
    gamebot_bob_play
    click_button "ROCK"
    expect(gamebot_select).to include find('#player2').text
  end
end