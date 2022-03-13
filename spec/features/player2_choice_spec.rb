feature "Selecting multiplayer and filling in names" do
  scenario "Multiplayer names page displays the users names" do
    visit("/")
    click_button "Pass and Play (2 player mode)"
    fill_in :player_1_name, with: "Chris"
    fill_in :player_2_name, with: "Coding"
    click_button 'Submit'
    click_button "Paper"

    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario "Player 1 choice page displays Player 1 name and displays their turn" do
    visit("/")
    click_button "Pass and Play (2 player mode)"
    fill_in :player_1_name, with: "Chris"
    fill_in :player_2_name, with: "Coding"
    click_button 'Submit'
    click_button "Rock"

    expect(page).to have_content "Coding it's now your turn. Chris, no peeking!"
  end
end