feature 'playing the game' do
  scenario 'user presented with move options' do
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'user can choose rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content("Your move: Rock")
  end

  scenario 'user can choose paper' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content("Your move: Paper")
  end

  scenario 'user can choose scissor' do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content("Your move: Scissors")
  end

  scenario 'the game chooses a random move' do
    srand(1234)
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content("Opponent's move: Scissors")
  end
end
