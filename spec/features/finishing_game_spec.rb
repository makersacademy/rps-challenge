feature 'the winner or draw is declared' do
  scenario 'Player wins' do
    srand(678_909)
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content("You won!")
  end

  scenario "It's a draw" do
    srand(678_909)
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content("It's a draw")
  end

  scenario 'Computer wins' do
    srand(678_909)
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content("The computer won :(")
  end
end
