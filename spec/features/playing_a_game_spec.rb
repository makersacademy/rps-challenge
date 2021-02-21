feature 'user can play a game of rock paper scissors' do
  scenario 'user picks rock while computer picks scissors' do
    sign_in_and_play
    srand(4)
    click_button "Rock"
    expect(page).to have_content("You won!")
  end
  scenario 'user picks scissors while computer picks scissors' do
    sign_in_and_play
    srand(4)
    click_button "Scissors"
    expect(page).to have_content("It's a draw!")
  end
  scenario 'user picks paper while computer picks scissors' do
    sign_in_and_play
    srand(4)
    click_button "Paper"
    expect(page).to have_content("You lost :(")
  end

end
