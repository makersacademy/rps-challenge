feature "Outcome page: " do
  feature "single-player" do

    before do
      submit_single_name("Ed")
      choose_rock
    end

    scenario "user sees the outcome" do
      expect(page).to have_content "Ed wins!"
    end

    scenario "user can start a new game" do
      click_button('new game')
      expect(page).to have_content "Welcome to Rock Paper Scissors"
    end

    scenario "user can play again" do

    end

  end

  feature "multi-player" do

    before do
      submit_two_names("Ed", "John")
      choose_rock
      choose_paper
    end

    scenario "players sees the outcome" do
      expect(page).to have_content "John wins!"
    end

    scenario "players can play again" do

    end

    scenario "players can start a new game" do
      click_button('new game')
      expect(page).to have_content "Welcome to Rock Paper Scissors"
    end

  end

end
