 feature 'Play game' do
  before do
    sign_in_and_play
  end

  scenario 'see the choices' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
  
  scenario 'choose an option' do
    click_button('Paper')
    expect(page).to have_content 'Your choice is Paper!'
  end

  scenario 'play again' do
    click_button('Rock')
    expect(page).to have_link('Play again')
  end

  scenario 'computer chooses a random option' do
    srand(67889)
    click_button('Paper')
    expect(page).to have_content('Opponent chose Rock!')
  end

  scenario 'Player 1 wins' do
    srand(67889)
    click_button('Paper')
    expect(page).to have_content('You win!')
  end

  scenario 'Player 2 wins' do
    srand(67889)
    click_button('Scissors')
    expect(page).to have_content('You lose!')
  end

  scenario 'Draw' do
    srand(67889)
    click_button('Rock')
    expect(page).to have_content('Draw!')
  end
end