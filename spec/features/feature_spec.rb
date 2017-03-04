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
      expect(page).to have_content("Pick your weapon, #{human}")
    end
  end
end
