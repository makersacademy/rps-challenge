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

  scenario "after choosing weapon, a computer's random choise is shown too" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Computer has played"
  end

  scenario "displays a winning/losing message" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to satisfy do |page|
      page.has_content?("You have lost...") ||
        page.has_content?("You have won!") or
        page.has_content?("The game is even.")
    end
  end

  scenario "player is able to go back to main page after choosing a weapon" do
    sign_in_and_play
    click_button "Rock"
    click_button "Go back"
    expect(page).to have_content "Player 1:"
  end
end
