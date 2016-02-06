feature 'Displays results' do
  scenario 'Player and Computer pick rock' do
    computer_picks_rock
    start_game
    click_button('Rock')
    expect(page).to have_content('You Draw!')
  end

  scenario 'Player picks rock, Computer picks scissors' do
    computer_picks_scissors
    start_game
    click_button('Rock')
    expect(page).to_not have_content('You Draw!')
    expect(page).to have_content('Rock beats Scissors')
    expect(page).to have_content('You Win!')
  end

  scenario 'Player picks rock, Computer picks paper' do
    computer_picks_paper
    start_game
    click_button('Rock')
    expect(page).to have_content('Paper beats Rock')
    expect(page).to have_content('You Lose!')
  end

  scenario 'Player and Computer pick scissors' do
    computer_picks_scissors
    start_game
    click_button('Scissors')
    expect(page).to have_content('You Draw!')
  end

  scenario 'Player picks scissors, Computer picks paper' do
    computer_picks_paper
    start_game
    click_button('Scissors')
    expect(page).to_not have_content('You Draw!')
    expect(page).to have_content('Scissors beat Paper')
    expect(page).to have_content('You Win!')
  end

  scenario 'Player picks scissors, Computer picks rock' do
    computer_picks_rock
    start_game
    click_button('Scissors')
    expect(page).to have_content('Rock beats Scissors')
    expect(page).to have_content('You Lose!')
  end
end