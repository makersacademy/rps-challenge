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

  scenario 'computer chooses Rock' do
    click_button('Rock')
    expect(page).to have_content("Opponent chose Rock")
  end

  # scenario 'computer chooses a random option' do
  #   click_button('Paper')
  #   expect(page).to have_content("Opponent chose Scissors!")
  # end
end