feature 'Displays results' do
  scenario 'Player and Computer pick rock' do
    srand(2)
    start_game
    click_button('Rock')
    expect(page).to have_content('You Draw!')
  end

  scenario 'Player picks rock, Computer picks scissors' do
    srand(3)
    start_game
    click_button('Rock')
    expect(page).to_not have_content('You Draw!')
    expect(page).to have_content('Rock beats Scissors')
    expect(page).to have_content('You Win!')
  end
end