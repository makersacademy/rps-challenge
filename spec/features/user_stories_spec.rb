feature "Signing Up" do
  scenario "Player is greeted to the game" do
    visit ("/")
    expect(page).to have_text ("Welcome to Rock-Paper-Scissors Online Game")
  end

  scenario "Player needs to enter their name" do
    visit ("/")
    expect(page).to have_field ("player_one_name")
  end
end

feature "User enters name and chooses hand" do
  scenario "Player has entered their name" do
    log_in
    expect(page).to have_text "Welcome Nikolaos!"
  end

  scenario "Player needs to choose their hand" do
    log_in
    expect(page).to have_text ("Please select your hand.")
  end

  context "User has 3 options" do
    scenario "user can choose Rock" do
      log_in
      expect(page).to have_button("rock")
    end

    scenario "user can choose Paper" do
      log_in
      expect(page).to have_button("paper")
    end

    scenario "user can choose Scissors" do
      log_in
      expect(page).to have_button("scissors")
    end

  end

    context "User selects one of the options" do
      scenario "user clicks Rock" do
        log_in
        click_button ("rock")
        expect(page).to have_text ("You have chosen \"Rock\"")
      end

      scenario "user clicks Papes" do
        log_in
        click_button ("paper")
        expect(page).to have_text ("You have chosen \"Paper\"")
      end

      scenario "user clicks Scissors" do
        log_in
        click_button ("scissors")
        expect(page).to have_text ("You have chosen \"Scissors\"")
      end

    end

end

feature "Deciding on the winner" do
  scenario "And the winner is..... (text)" do
    log_in
    click_button ("scissors")
    expect(page).to have_text ("The winner is:")
  end

end
