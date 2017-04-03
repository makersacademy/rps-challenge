feature 'Playing game in multiplayer mode' do

  scenario 'starts with player 1' do
    multiplayer_sign_in
    expect(page).to have_content("Pedro it's your turn.")
  end

  scenario 'switches to player 2' do
    multiplayer_sign_in
    click_button('Rock')
    expect(page).to have_content("Trish it's your turn.")
  end

  scenario 'player 1 can win the game' do
    multiplayer_sign_in
    click_button('Rock')
    click_button('Scissors')
    expect(page).to have_content("Pedro, you win!")
  end

  scenario 'player 2 can win the game' do
    multiplayer_sign_in
    click_button('Rock')
    click_button('Paper')
    expect(page).to have_content("Pedro, you lose!")
  end

  scenario 'the game can be a draw' do
    multiplayer_sign_in
    click_button('Rock')
    click_button('Rock')
    expect(page).to have_content("draw")
  end

  scenario 'can play multiple times' do
    multiplayer_sign_in
    click_button('Rock')
    click_button('Rock')
    click_button('Play Again')
    expect(page).to have_current_path('/multiplayer/play1')
  end
end
