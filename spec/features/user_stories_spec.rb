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
    scenario "use can choose Rock" do
      log_in
      expect(page).to have_button('rock')
    end

    scenario "use can choose Paper" do
      log_in
      expect(page).to have_button('paper')
    end

    scenario "use can choose Scissors" do
      log_in
      expect(page).to have_button('scissor')
    end

  end

end
