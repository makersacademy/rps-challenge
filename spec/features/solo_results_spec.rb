feature "Playing through to the end of the game" do
  scenario "shows the randomly generated move of computer" do
    solo_submit_name_select_rock

    expect(page).to have_content "The computer chose"
  end

  scenario "shows two options, play another solo game or go to home page" do
    solo_submit_name_select_rock

    expect(page).to have_button "Play another solo game"
    expect(page).to have_button "Home"
  end

end
