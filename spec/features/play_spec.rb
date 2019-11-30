feature "Playing the game" do
  scenario "shows the message 'It is a tie!' if both computer and player choose the same weapon" do
    srand(0)
    sign_in_and_play
    choose "Rock"
    click_button "OK"
    expect(page).to have_content "It is a tie!"
  end

  scenario "shows the message 'Congratulations, you won!' if the user wins" do
    srand(4)
    sign_in_and_play
    choose "Rock"
    click_button "OK"
    expect(page).to have_content "Congratulations, you won!"
  end

  scenario "shows the message 'Bad luck, you lost!' if the user loses" do
    srand(3)
    sign_in_and_play
    choose "Rock"
    click_button "OK"
    expect(page).to have_content "Bad luck, you lost!"
  end
end
