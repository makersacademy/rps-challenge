feature "Result of round of game" do
  scenario "both player and computer choose Rock" do
    allow_any_instance_of(Game).to receive(:choice).and_return("Rock")
    enter_name_and_ok
    click_button "Rock"
    expect(page).to have_content "It's a draw!"
  end
end

feature "Result of round of game" do
  scenario "player chooses Paper and computer choose Rock" do
    allow_any_instance_of(Game).to receive(:choice).and_return("Rock")
    enter_name_and_ok
    click_button "Paper"
    expect(page).to have_content "You won!"
  end
end

feature "Want to play again?" do
  scenario "after the result of the game" do
    enter_name_and_ok
    click_button "Paper"
    expect(page).to have_content "Do you want to play again?"
  end
end
