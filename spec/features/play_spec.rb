feature "Play" do
  
  scenario "player can select rock/paper/scissors" do
    start_game
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end
end