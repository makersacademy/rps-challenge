feature "Playing through to the end of the game" do
  scenario "shows the randomly generated move of computer" do
    visit("/")
    click_button "Solo Game"
    fill_in :player_1_name, with: "Chris"
    click_button 'Submit'
    click_button "Rock"

    expect(page).to have_content "The computer chose"
  end

  scenario "shows two options, play another solo game or go to home page" do
    visit("/")
    click_button "Solo Game"
    fill_in :player_1_name, with: "Chris"
    click_button 'Submit'
    click_button "Rock"

    expect(page).to have_button "Play another solo game"
    expect(page).to have_button "Home"
  end

end
