feature 'Game over' do
  scenario 'when both players have had a go' do
    sign_in_start_game
    click_button 'Submit'
    click_button 'Submit'
    expect(page).to have_content 'Game over'
  end

  # scenario 'when player 1 wins' do
  #   sign_in_start_game
  #   click_button 'Submit'
  #   click_button 'Submit'
  #   expect(page).to have_content 'Jess is the winner!'
  # end

  scenario 'when players draw' do
    sign_in_start_game
    click_button 'Submit'
    click_button 'Submit'
    expect(page).to have_content "It's a draw!"
  end

  # scenario 'when player 1 loses' do
  #   sign_in_start_game
  #   click_button 'Submit'
  #   click_button 'Submit'
  #   expect(page).to have_content "James is the winner!"
  # end

  scenario 'option to play again' do
    sign_in_start_game
    click_button 'Submit'
    click_button 'Submit'
    expect(page).to have_button 'Play again' 
  end
end
