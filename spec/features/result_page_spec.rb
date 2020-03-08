feature 'Playing game' do 
  scenario 'view the option choosen by user' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content 'You chose Paper'
  end 
  scenario 'view the option choosen by random' do
    sign_in_and_play
    srand(5465)
    click_button 'Rock'
    expect(page).to have_content 'your opponent chose Rock'
  end
  scenario 'view the result' do
    sign_in_and_play
    srand(5465)
    click_button 'Paper'
    expect(page).to have_content 'Win'
  end
  context 'when game is complete' do
    scenario 'give option to play again' do
      sign_in_and_play
      srand(65)
      click_button 'Scissors'
      expect(page).to have_button 'Play Again'
    end
  end
end
