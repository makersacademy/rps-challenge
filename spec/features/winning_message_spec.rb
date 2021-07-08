feature 'Winning message displayed at the end' do
  scenario 'the player ties the draw' do
    srand 1
    sign_in_and_player1_selects
    expect(page).to have_text('Tie! Try again')
  end

  scenario 'the player wins the draw' do
    srand 2
    sign_in_and_player1_selects
    expect(page).to have_content('Player wins')
  end

  scenario 'the player loses the draw' do
    srand 3
    sign_in_and_player1_selects
    expect(page).to have_content('Computer wins')
  end

end
