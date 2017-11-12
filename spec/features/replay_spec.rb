feature 'Allowing the user to play the game again' do
  Game.create('Peter', 'cpu')
  scenario 'Checking there is a button on the page to allow them to choose again' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_button 'Let\'s go!'
  end
  scenario 'Checking the player\'s name has not been reset' do
    sign_in_and_play
    click_button 'Rock'
    click_button 'Let\'s go!'
    expect(Game.access.player.name).to eq 'Peter'
  end
end
