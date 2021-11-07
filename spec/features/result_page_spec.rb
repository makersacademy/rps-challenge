feature 'RPS results page' do
  srand(2)

  scenario 'user is informed that they won the game' do
    sign_in_and_play
    click_on('Scissors')

    expect(page).to have_content('John wins! Scissors beats Paper')
  end

  scenario 'user is informed that they lost the game' do
    sign_in_and_play
    click_on('Scissors')
    expect(page).to have_content('John loses! Rock beats Scissors')
  end

end