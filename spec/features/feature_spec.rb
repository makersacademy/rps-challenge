require_relative './web_helpers.rb'

describe RockPaperScissors, :type => :feature do
  let(:player) { Player.new("player") }
  let(:computer) { Computer.new }

  feature "main page" do
    scenario "shows the welcome message" do
      visit '/'
      expect(page).to have_content("Play Rock-Paper-Scissors!")
    end
  end

  feature "play page" do
    scenario "stores the human player name" do
      enter_name
      expect(page).to have_content("Pick your weapon, #{player.name}.")
    end
  end

  feature "#result" do
    scenario "shows the result page with each player's choices" do
      enter_name
      fill_in :selection, with: "rock"
      click_button("THROW!")
      expect(page).to have_content("Result:")
      expect(page).to have_content("#{player.name} chose rock")
      expect(page).to have_content("#{computer.name} chose #{computer.weapon}")
    end
  end
end
