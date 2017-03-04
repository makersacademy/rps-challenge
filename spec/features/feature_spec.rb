describe RockPaperScissors, :type => :feature do
  let(:human) { double("human") }

  feature "main page" do
    it "shows the welcome message" do
      visit '/'
      expect(page).to have_content("Welcome to Rock/Paper/Scissors!")
    end
  end

  feature "play page" do
    it "stores the human player name" do
      visit'/'
      fill_in :name, with: human
      click_button("Go")
      expect(page).to have_content("Pick your weapon, #{human}.")
    end
  end

  feature "#result" do
    it "shows the result" do
      visit'/'
      fill_in :name, with: human
      click_button("Go")
      fill_in :selection, with: "rock"
      click_button("FIGHT")
      expect(page).to have_content("Result:")
    end
  end

  # feature "weapon selection page" do
  #   it "provides a choice of weapons" do
  #     visit'/'
  #     fill_in :name, with: human
  #     click_button("Go")
  #     fill_in :selection, with: "rock"
  #     click_button("FIGHT")
  #     # STUB COMPUTER'S CHOICE HERE TO SCISSORS
  #     expect(page).to have_content("You win, #{human}!")
  #   end
  # end
end
