feature 'Results are announces' do
  before do
    srand(1234)
    sign_in_and_play
  end

  scenario 'the player is declared the winner' do
    click_button('Rock')
    expect(page).to have_content("You win!")
  end

  scenario 'the player is declared the loser' do
    click_button('Paper')
    expect(page).to have_content("You lose! Better luck next time!")
  end

  scenario 'the players have drawn the match' do
    click_button('Scissors')
    expect(page).to have_content("It's a tie!")
  end
end
