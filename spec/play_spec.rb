require "capybara/rspec"
require_relative "../app/app"

Capybara.app = RPS

describe RPS do

  feature "Computer selects random weapon: " do
    scenario "computer selects paper and shows paper" do
      allow_any_instance_of(Array).to receive(:sample).and_return('paper')
      sign_in_and_play
      rock
      expect(page).to have_content "Takeshi chose paper!"
    end
  end

  feature "Shows the player winning: " do
    scenario "player choses rock and computer choses scissors" do
      allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
      sign_in_and_play
      rock
      expect(page).to have_content "Miriam Bancroft wins"
    end
  end

  feature 'Playing the game: ' do
    scenario "When I submit 'Rock' I am told if I have won" do
      allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
      sign_in_and_play
      rock
      expect(page).to have_content "Miriam Bancroft wins"
    end
  end

  feature "Shows the player losing: " do
    scenario "player choses rock and computer choses paper" do
      allow_any_instance_of(Array).to receive(:sample).and_return('paper')
      sign_in_and_play
      rock
      expect(page).to have_content "Miriam Bancroft loses"
    end
  end

  feature "Shows the player drawing: " do
    scenario "player choses rock and computer choses rock" do
      allow_any_instance_of(Array).to receive(:sample).and_return('rock')
      sign_in_and_play
      rock
      expect(page).to have_content "Draw"
    end
  end

  feature "Shows the player winning: " do
    scenario "player choses paper and computer choses rock" do
      allow_any_instance_of(Array).to receive(:sample).and_return('rock')
      sign_in_and_play
      paper
      expect(page).to have_content "Miriam Bancroft wins"
    end
  end

  feature "Shows the player losing: " do
    scenario "player choses scissors and computer choses rock" do
      allow_any_instance_of(Array).to receive(:sample).and_return('rock')
      sign_in_and_play
      scissors
      expect(page).to have_content "Miriam Bancroft loses"
    end
  end

end
