feature "Selecting multiplayer and filling in names" do
  scenario "Multiplayer names page displays the users names" do
    pass_and_play_submit_names('Chris', 'Coding')
    click_button "Paper"

    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario "Player 1 choice page displays Player 1 name and displays their turn" do
    pass_and_play_submit_names('Chris', 'Coding')
    click_button "Rock"

    expect(page).to have_content "Coding it's now your turn. Chris, no peeking!"
  end
end