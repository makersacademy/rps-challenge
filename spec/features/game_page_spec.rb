feature "game page" do

  context "in single player mode" do
    before do
      start_single_player
      enter_single_name
    end

    it "has 'Rock' button'" do
      expect(page).to have_selector(:button, "Rock")
    end

    it "has 'Paper' button'" do
      expect(page).to have_selector(:button, "Paper")
    end

    it "has 'Scissors' button'" do
      expect(page).to have_selector(:button, "Scissors")
    end

    it "has 'Lizard' button'" do
      expect(page).to have_selector(:button, "Lizard")
    end

    it "has 'Spock' button'" do
      expect(page).to have_selector(:button, "Spock")
    end

    it "shows player and computer names" do
      expect(page).to have_content("Dog vs Computer")
    end

    it "invites player one to choose weapon" do
      expect(page).to have_content("Dog, choose your weapon!")
    end

    it "does not redirect to invite second player to choose weapon" do
      click_button "Rock"
      expect(page).not_to have_content("Computer, choose your weapon!")
    end
  end

  context "in multiplayer mode" do
    before do
      start_multiplayer
      enter_multiple_names
    end

    it "has 'Rock' button'" do
      expect(page).to have_selector(:button, "Rock")
    end

    it "has 'Paper' button'" do
      expect(page).to have_selector(:button, "Paper")
    end

    it "has 'Scissors' button'" do
      expect(page).to have_selector(:button, "Scissors")
    end

    it "shows both player names" do
      expect(page).to have_content("Dog vs Cat")
    end

    it "invites player one to choose weapon" do
      expect(page).to have_content("Dog, choose your weapon!")
    end

    it "redirects to invite second player to choose weapon" do
      click_button "Rock"
      expect(page).to have_content("Cat, choose your weapon!")
    end

    it "does not redirect twice" do
      click_button "Rock"
      click_button "Paper"
      expect(page).not_to have_content("choose your weapon!")
    end
  end
end
