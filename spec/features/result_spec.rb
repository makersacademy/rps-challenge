feature 'show results of the game' do
  scenario 'you win' do
    # play_rock
    register_and_play
    srand(2)
    click_button 'paper'
    expect(page).to have_content('Han won')
  end
  scenario 'you lost' do
    register_and_play
    srand(2)
    click_button 'scissors'
    expect(page).to have_content('Han lost')
  end
  scenario 'you drew' do
    register_and_play
    srand(2)
    click_button 'rock'
    expect(page).to have_content('Han drew')
  end

  scenario 'can return to start of game' do
    register_and_play
    srand(2)
    click_button 'rock'
    expect(page).to have_button('New Game')
  end

  scenario 'can rematch' do
    register_and_play
    srand(2)
    click_button 'rock'
    expect(page).to have_button('Rematch')
  end

end
