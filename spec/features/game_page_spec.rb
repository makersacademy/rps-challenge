feature "game page" do

  context "in single player mode" do
    before do
      start_single_player
      enter_single_name
    end

    it "has :rock button'" do
      expect(page).to have_selector(:button, :rock)
    end

    it "has :paper button'" do
      expect(page).to have_selector(:button, :paper)
    end

    it "has :scissors button'" do
      expect(page).to have_selector(:button, :scissors)
    end

    it "has :lizard button'" do
      expect(page).to have_selector(:button, :lizard)
    end

    it "has :spock button'" do
      expect(page).to have_selector(:button, :spock)
    end

    it "shows player and computer names" do
      expect(page).to have_content("Dog vs Computer")
    end

    it "invites player one to choose weapon" do
      expect(page).to have_content("Dog, choose your weapon!")
    end

    it "does not redirect to invite second player to choose weapon" do
      click_button :rock
      expect(page).not_to have_content("Computer, choose your weapon!")
    end
  end

  context "in multiplayer mode" do
    before do
      start_multiplayer
      enter_multiple_names
    end

    it "has :rock button'" do
      expect(page).to have_selector(:button, :rock)
    end

    it "has :paper button'" do
      expect(page).to have_selector(:button, :paper)
    end

    it "has :scissors button'" do
      expect(page).to have_selector(:button, :scissors)
    end

    it "has :lizard button'" do
      expect(page).to have_selector(:button, :lizard)
    end

    it "has :spock button'" do
      expect(page).to have_selector(:button, :spock)
    end

    it "shows both player names" do
      expect(page).to have_content("Dog vs Cat")
    end

    it "invites player one to choose weapon" do
      expect(page).to have_content("Dog, choose your weapon!")
    end

    it "redirects to invite second player to choose weapon" do
      click_button :rock
      expect(page).to have_content("Cat, choose your weapon!")
    end

    it "does not redirect twice" do
      click_button :rock
      click_button :paper
      expect(page).not_to have_content("choose your weapon!")
    end
  end
end
