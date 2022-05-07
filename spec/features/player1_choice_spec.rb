feature "Selecting multiplayer and filling in names" do
  scenario "Player 1 choice page displays Rock, Paper and Scissors buttons" do
    pass_and_play_submit_names('Chris', 'Coding')

    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario "Player 1 choice page displays Player 1 name and displays their turn" do
    pass_and_play_submit_names('Chris', 'Coding')

    expect(page).to have_content "Chris it's your turn. Coding, no peeking!"
  end
end