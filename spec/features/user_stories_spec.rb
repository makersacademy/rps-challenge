feature "User stories" do

  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game
  feature "player can enter a name" do
    scenario "player lands on homepage and can enter their name" do
      visit("/")
      expect(page).to have_content("Enter name to play")
    end
  end

  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors
  feature "player can choose rock, paper, or scissors" do
    scenario "player is given three options to choose from" do
      enter_name_and_play
      expect(page).to have_selector("input[value='Rock']")
      expect(page).to have_selector("input[value='Paper']")
      expect(page).to have_selector("input[value='Scissors']")
    end

    scenario "it welcomes the player using their name" do
      enter_name_and_play
      expect(page).to have_content("Welcome Moe Syzslak")
    end
  end

  feature "compare players choice to opponent's choice" do
    scenario "player finds out if they won or lost" do
      enter_name_and_play
      click_button "Rock"
      expect(page).to have_content("You win!" || "You lose!" || "It's a draw!")
    end
  end

end
