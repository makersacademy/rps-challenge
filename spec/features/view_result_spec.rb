feature 'View result' do
  scenario 'After game, players can see a tie result' do
    visit('/')
    choose('two-player')
    choose('normal')
    click_on('Start game')

    fill_in 'player1_name', with: 'Player 1'
    fill_in 'player2_name', with: 'Player 2'
    click_on 'Start game'

    choose('p1-paper')
    choose('p2-paper')
    click_on 'Play'

    expect(page).to have_content("It's A Tie!")
  end

  scenario 'After game against the computer, player can see a result' do
    visit('/')
    choose('single-player')
    choose('normal')
    click_on('Start game')

    fill_in 'player1_name', with: 'Player 1'
    click_on 'Start game'

    choose('p1-paper')
    click_on 'Play'

    expect(page).to have_content("Player 1 : paper")
  end
end
