feature "Outcome page: " do

  feature "single-player" do

    before do
      visit('/')
      click_button('Original')
      click_button('one-player')
      fill_in :player_1, with: "Ed"
      click_button 'Submit'
      choose_rock
    end

    scenario "user sees the outcome" do
      expect(page).to have_content "played rock!"
    end

    scenario "user can start a new game" do
      click_button('new game')
      expect(page).to have_content "Welcome to Rock Paper Scissors"
    end

    scenario "user can play again" do
      click_button('play again')
      expect(page).to have_content "Choose your move!"
    end

  end

  feature "multi-player" do

    before do
      visit('/')
      click_button('Original')
      click_button('two-player')
      fill_in :player_1, with: "Ed"
      fill_in :player_2, with: "John"
      click_button 'Submit'
      choose_rock
      choose_paper
    end

    scenario "players sees the outcome" do
      expect(page).to have_content "wins!"
    end

    scenario "players can play again" do
      click_button('play again')
      expect(page).to have_content "Choose your move!"
    end

    scenario "players can start a new game" do
      click_button('new game')
      expect(page).to have_content "Welcome to Rock Paper Scissors"
    end

  end

end
