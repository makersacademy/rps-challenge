feature "Selecting multiplayer and filling in names" do
  scenario "Player 1 choice page displays Rock, Paper and Scissors buttons" do
    visit("/")
    click_button "Pass and Play (2 player mode)"
    fill_in :player_1_name, with: "Chris"
    fill_in :player_2_name, with: "Coding"
    click_button 'Submit'

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

      expect(page).to have_content "Chris it's your turn. Coding, no peeking!"
  end
end