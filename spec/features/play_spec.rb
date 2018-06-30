feature 'playing the game' do
  before do
    srand(1234)
    sign_in_and_play
  end

  scenario 'user presented with move options' do
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'user can choose rock' do
    click_button('Rock')
    expect(page).to have_content("Your move: Rock")
  end

  scenario 'user can choose paper' do
    click_button('Paper')
    expect(page).to have_content("Your move: Paper")
  end

  scenario 'user can choose scissor' do
    click_button('Scissors')
    expect(page).to have_content("Your move: Scissors")
  end

  scenario 'the game chooses a random move' do
    click_button('Scissors')
    expect(page).to have_content("Opponent's move: Scissors")
  end

  scenario 'the player has a choice to play again' do
    click_button('Scissors')
    expect(page).to have_button("Play again!")
  end

  scenario 'the player returns back to options page to play again' do
    click_button('Scissors')
    click_button('Play again!')
    expect(page).to have_content("Welcome Jenny, choose your move!")
  end
end
