feature "Get user input for a player's name, and incorporate it into the game" do
  
  scenario "user enters their name and clicks Play Against Computer" do
    player_vs_computer
    expect(page).to have_content "Welcome Ben to Rock, Paper, Scissors!"
  end
end

