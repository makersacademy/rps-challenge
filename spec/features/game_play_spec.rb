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
    expect(page).to have_button('Play again')
  end

  scenario 'computer chooses a random option' do
    srand(6788910)
    click_button('Paper')
    expect(page).to have_content('Opponent chose Rock!')
  end

  context 'game result' do
    before do 
      srand(6788910) # gives 'rock' option
    end

    scenario 'Player 1 wins' do
      click_button('Paper')
      expect(page).to have_content('You win!')
    end

    scenario 'Player 2 wins' do
      click_button('Scissors')
      expect(page).to have_content('Bad luck - next time!')
    end

    scenario 'Draw' do
      click_button('Rock')
      expect(page).to have_content('Draw!')
    end

  end 
end