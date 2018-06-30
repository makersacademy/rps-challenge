feature 'Results are announces' do
  scenario 'the player is declared the winner' do
    srand(1234)
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content("You win!")
  end

  scenario 'the player is declared the loser' do
    srand(1234)
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content("You lose! Better luck next time!")
  end

  scenario 'the players have drawn the match' do
    srand(1234)
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content("It's a tie!")
  end
end
