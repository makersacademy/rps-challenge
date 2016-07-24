feature "Playing the game" do
  scenario "player is able to choose Rock" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "You've chosen Rock"
  end

  scenario "player is able to choose Paper" do
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content "You've chosen Paper"
  end

  scenario "player is able to choose Scissors" do
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content "You've chosen Scissors"
  end
end
