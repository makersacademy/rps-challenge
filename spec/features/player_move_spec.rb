feature "Player chooses move" do
  scenario "Allow player to choose Rock" do
    sign_in_and_play
    click_button "ROCK"
    expect(page).to have_content "You chose to play ROCK"
  end

  scenario "Allow player to choose Paper" do
    sign_in_and_play
    click_button "PAPER"
    expect(page).to have_content "You chose to play PAPER"
  end

  scenario "Allow player to choose Scissors" do
    sign_in_and_play
    click_button "SCISSORS"
    expect(page).to have_content "You chose to play SCISSORS"
  end
end
