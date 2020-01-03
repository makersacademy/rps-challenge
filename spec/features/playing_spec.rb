feature "Allow the player to choose either rock, paper, or scissors" do
  scenario "when the game has begun, the player should see three buttons" do
    player_vs_computer
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end
end