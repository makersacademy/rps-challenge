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

  feature "#play again" do
    scenario "can play again from result page" do
      enter_name
      fill_in :selection, with: "rock"
      click_button("THROW!")
      click_button("Play again")
      expect(page).to have_content("Pick your weapon, #{player.name}.")
    end
  end

  feature "winning and losing" do
    scenario "player throws paper and beats computer's rock" do
      enter_name
      fill_in :selection, with: "paper"
      allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)
      click_button("THROW!")
      expect(page).to have_content("#{player.name} won!")
    end

    scenario "computer throws scissors and beats player's paper" do
      enter_name
      fill_in :selection, with: "paper"
      allow_any_instance_of(Computer).to receive(:choice).and_return(:scissors)
      click_button("THROW!")
      expect(page).to have_content("#{computer.name} won!")
    end

    scenario "player and computer both throw rock and tie" do
      enter_name
      fill_in :selection, with: "rock"
      allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)
      click_button("THROW!")
      expect(page).to have_content("Tie game. Play again?")
    end
  end
end
