feature 'Entering names' do
  scenario 'Player 1 enters name and displays name on play page' do
    visit('/')
    choose('single-player')
    choose('normal')
    click_on('Start game')

    fill_in 'player1_name', with: 'Player 1'
    click_on 'Start game'

    expect(page).to have_content('Player 1')
  end

  scenario 'Player 2 enters name and displays name on play page' do
    visit('/')
    choose('two-player')
    choose('normal')
    click_on('Start game')

    fill_in 'player1_name', with: 'Player 1'
    fill_in 'player2_name', with: 'Player 2'
    click_on 'Start game'

    expect(page).to have_content('Player 2')
  end

  scenario 'Player 2 does not enter name, therefore name should equal Computer' do
    visit('/')
    choose('single-player')
    choose('normal')
    click_on('Start game')

    fill_in 'player1_name', with: 'Player 1'
    click_on 'Start game'
    expect(page).to have_content('Computer')
  end
end
