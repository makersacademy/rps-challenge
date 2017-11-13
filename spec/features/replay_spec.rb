feature 'Allowing the user to play the game again' do
  Game.create('Peter', 'cpu')
  scenario 'Checking there is a button on the page to allow them to choose again' do
    play_game
    expect(page).to have_button 'Let\'s go!'
  end
  scenario 'Checking the player\'s name has not been reset' do
    play_game
    click_button 'Let\'s go!'
    expect(Game.access.player.name).to eq 'Peter'
  end
end
