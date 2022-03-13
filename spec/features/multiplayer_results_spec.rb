feature "Playing through to the end of the game" do
  scenario "shows the randomly generated move of computer" do
    visit("/")
    click_button "Pass and Play (2 player mode)"
    fill_in :player_1_name, with: "Chris"
    fill_in :player_2_name, with: "Coding"
    click_button 'Submit'
    click_button "Paper"
    click_button "Rock"

    expect(page).to have_content "Coding chose Rock"
  end

  scenario "shows two options, play another multiplayer game or go to home page" do
    visit("/")
    click_button "Pass and Play (2 player mode)"
    fill_in :player_1_name, with: "Chris"
    fill_in :player_2_name, with: "Coding"
    click_button 'Submit'
    click_button "Paper"
    click_button "Rock"

    expect(page).to have_button "Play another multiplayer game"
    expect(page).to have_button "Home"
  end

end