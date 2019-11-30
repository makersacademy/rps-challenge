feature "Playing the game" do
  scenario "should show the message 'It is a tie!' if both computer and player choose the same weapon" do
    srand(0)
    visit_and_enter_name
    play_a_game
    expect(page).to have_content "It is a tie!"
  end

  scenario "should show the message 'Congratulations, you won!' if the user wins" do
    srand(4)
    visit_and_enter_name
    play_a_game
    expect(page).to have_content "Congratulations, you won!"
  end

  scenario "should show the message 'Bad luck, you lost!' if the user loses" do
    srand(3)
    visit_and_enter_name
    play_a_game
    expect(page).to have_content "Bad luck, you lost!"
  end
end
