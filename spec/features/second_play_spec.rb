feature "Two Player Game" do

  scenario "should display who's turn it is if player 1 chooses rock" do
    sign_in_and_play_two_players
    click_button "ROCK"
    expect(page).to have_content("Bob's turn")
  end

  scenario "should display who's turn it is if player 1 chooses paper" do
    sign_in_and_play_two_players
    click_button "PAPER"
    expect(page).to have_content("Bob's turn")
  end

  scenario "should display who's turn it is if player 1 chooses scissors" do
    sign_in_and_play_two_players
    click_button "SCISSORS"
    expect(page).to have_content("Bob's turn")
  end

  context "player 1 chooses rock" do

    scenario "Can see the option to play ROCK" do
      sign_in_and_play_two_players
      click_button "ROCK"
      expect(page).to have_selector(:link_or_button, "ROCK")
    end

    scenario "Can see the option to play PAPER" do
      sign_in_and_play_two_players
      click_button "ROCK"
      expect(page).to have_selector(:link_or_button, "PAPER")
    end

    scenario "Can see the option to play SCISSORS" do
      sign_in_and_play_two_players
      click_button "ROCK"
      expect(page).to have_selector(:link_or_button, "SCISSORS")
    end

  end

  context "player 1 chooses paper" do

    scenario "Can see the option to play ROCK" do
      sign_in_and_play_two_players
      click_button "PAPER"
      expect(page).to have_selector(:link_or_button, "ROCK")
    end

    scenario "Can see the option to play PAPER" do
      sign_in_and_play_two_players
      click_button "PAPER"
      expect(page).to have_selector(:link_or_button, "PAPER")
    end

    scenario "Can see the option to play SCISSORS" do
      sign_in_and_play_two_players
      click_button "PAPER"
      expect(page).to have_selector(:link_or_button, "SCISSORS")
    end

  end

  context "player 1 chooses scissors" do

    scenario "Can see the option to play ROCK" do
      sign_in_and_play_two_players
      click_button "SCISSORS"
      expect(page).to have_selector(:link_or_button, "ROCK")
    end

    scenario "Can see the option to play PAPER" do
      sign_in_and_play_two_players
      click_button "SCISSORS"
      expect(page).to have_selector(:link_or_button, "PAPER")
    end

    scenario "Can see the option to play SCISSORS" do
      sign_in_and_play_two_players
      click_button "SCISSORS"
      expect(page).to have_selector(:link_or_button, "SCISSORS")
    end

  end

end
