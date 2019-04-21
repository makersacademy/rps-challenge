feature 'Restart game' do
  subject (:x) {Game.new("Rock", "Paper")}
  scenario 'player finishes a game and then clicks a button to restart' do
    visit('/')
    fill_in('name', with: 'Jake')
    click_on('Submit!')
    fill_in('player_move', with: 'Rock')
    click_on('Submit!')
    click_on('Play again?')
    expect(page).to have_content('Enter your name and click "Submit" to play')
  end
end
