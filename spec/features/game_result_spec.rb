feature "Game result" do

  scenario "The player is able to see if they have won" do
    srand(5) 
    register_name
    click_button("Rock")
    expect(page).to have_content("Serena wins")
  end

  scenario "The player is able to see if the game ends in a draw" do
    srand(5)
    register_name
    click_button("Scissors")
    expect(page).to have_content("It's a draw")
  end

  scenario "The player is able to see if they have lost" do
    srand(5) 
    register_name
    click_button("Paper")
    expect(page).to have_content("Opponent wins")
  end
end
