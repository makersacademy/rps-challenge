feature "Choose rock, paper or scissors" do
  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors
  scenario "Player chooses rock" do
    enter_batman
    click_button "rock"
    expect(page).to have_content "Batman chose rock."
  end

  scenario "Player chooses paper" do
    enter_batman
    click_button "paper"
    expect(page).to have_content "Batman chose paper."
  end

  scenario "Player chooses scissors" do
    enter_batman
    click_button "scissors"
    expect(page).to have_content "Batman chose scissors."
  end
end
