feature "Result" do
  scenario "user can view their option" do
    sign_in_and_play
    choose "Rock"
    click_button "Choose"
    expect(page).to have_content "Richard chooses Rock"
  end
  # scenario "computer shows its option" do
  #   sign_in_and_play
  #   choose "Rock"
  #   click_button "Choose"
  #   expect(page).to have_content "Computer chooses...."
  # end
  # scenario "user can see the game result" do
  #   sign_in_and_play
  #   choose "Rock"
  #   click_button "Choose"
  #   expect(page).to have_content ("Richard Draws!" || "Richard Wins!" || "Richard Loses!")
  # end
  scenario "user can play again with redirect" do
    sign_in_and_play
    choose "Rock"
    click_button "Choose"
    click_button "Play Again"
    expect(current_path).to eq "/play"
  end
end
