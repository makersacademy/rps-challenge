feature 'Player can start a new game' do
  scenario 'start new game with same player' do
    sign_in_and_choose_rock
    click_button('Play again as Hannah')
    expect(page).to have_content('Welcome Hannah')
  end

  scenario 'start new game with different player' do
    sign_in_and_choose_rock
    click_button('Play again as new player')
    expect(page).to have_content('Welcome to Rock Paper Scissors')
  end

  scenario 'don\'t start new game' do
    sign_in_and_choose_rock
    click_button('Leave game')
    expect(page).to have_content('Thanks for playing, Hannah!')
  end
end
