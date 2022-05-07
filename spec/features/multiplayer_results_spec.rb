feature "Playing through to the end of the game" do
  scenario "shows the randomly generated move of computer" do
    pass_and_play_submit_names('Chris', 'Coding')
    click_button "Paper"
    click_button "Rock"

    expect(page).to have_content "Coding chose Rock"
  end

  scenario "shows two options, play another multiplayer game or go to home page" do
    pass_and_play_submit_names('Chris', 'Coding')
    click_button "Paper"
    click_button "Rock"

    expect(page).to have_button "Play another multiplayer game"
    expect(page).to have_button "Home"
  end

end