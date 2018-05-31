feature 'Play again' do
  scenario 'Allow player(s) the chance to play the game again' do
    visit('/')
    choose('single-player')
    choose('normal')
    click_on('Start game')

    fill_in 'player1_name', with: 'Player 1'
    click_on 'Start game'

    choose('p1-paper')
    click_on 'Play'

    click_on 'Play Again'
    expect(page).to have_content('Paper Scissors Rock Game')
  end
end
