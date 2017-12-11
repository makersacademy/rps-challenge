feature 'login' do

  scenario 'it should display name of player1' do
    sign_in_and_ready_up
    expect(page).to have_content('Player1')
  end

  scenario 'it should display name of player2' do
    sign_in_and_ready_up
    expect(page).to have_content('Player2')
  end

  scenario 'it should allow players to click button to start game' do
    sign_in_and_ready_up
    expect(page).to have_button('Lets Rock!')
  end

  scenario 'it should allow players to click button to start game' do
    sign_in_and_ready_up
    click_button('Lets Rock!')
    expect(page).to have_content('Player1')
  end

end