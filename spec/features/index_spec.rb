feature "Single player VS Multiplayer Game" do
  scenario "Player clicks Human VS Computer button" do
    visit("/")
    click_button("Human Vs Computer")
    expect(page).to have_content("Please enter your name")
  end

  # feature "The game page" do
  #   scenario "Player fills in the name Mormolis" do
  #     pending("")
  #     multiplayer_sign_in_and_play
  #     expect(page).to have_content("Mormolis's turn")
  #   end
  # end
  
  # feature "bot plays" do
  #   scenario "Human Player chooses scissors and loses/wins" do
  #     pending("")
  #     multiplayer_sign_in_and_play
  #     click_button "Scissors"
  #     srand(1)
  #     expect(page).to have_content("S1llyB0t wins with")
  #   end
  # end
end
