describe RockPaperScissors, :type => :feature do
  let(:human) { double("human") }

  feature "main page" do
    scenario "shows the welcome message" do
      visit '/'
      expect(page).to have_content("Welcome to Rock/Paper/Scissors!")
    end
  end

  feature "play page" do
    scenario "stores the human player name" do
      visit'/'
      fill_in :name, with: human
      click_button("Go")
      expect(page).to have_content("Pick your weapon, #{human}.")
    end
  end

  feature "#result" do
    scenario "shows the result page with each player's choices" do
      visit'/'
      fill_in :name, with: human
      click_button("Go")
      fill_in :selection, with: "rock"
      click_button("FIGHT")
      expect(page).to have_content("Result:")
      expect(page).to have_content("#{human} chose rock")
      # expect(page).to have_content("#{computer} chose ####")
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
