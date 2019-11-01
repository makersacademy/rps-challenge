feature "Choose rock, paper or scissors" do
  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors
  scenario "Player chooses rock" do
    enter_batman
    click_button "Rock"
    expect(page).to have_content "Batman chose rock."
  end
end
