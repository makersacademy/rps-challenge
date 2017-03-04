

describe RockPaperScissors, :type => :feature do
  feature "main page" do
    it "welcomes player to the game" do
      visit'/'
      expect(page).to have_content("Welcome to Rock/Paper/Scissors")
    end
  end
end
