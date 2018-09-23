require 'spec_helper'

describe RockPaperScissors do
  feature "Start Multiplayer Functionality" do

    it "flips coin" do
      srand(900_000_000_000)
      multiplayer_game_started
      expect(page).to have_content("It's Squidward's turn.")
    end

    it "allow person to choose." do
      srand(911)
      multiplayer_game_started
      click_button "Rock"
      expect(page).to have_content("Patrick's turn:")
    end

    it "reaches the grand finale" do
      srand(152_352_427_389_723_843_748_937_924_7)
      multiplayer_game_started
      click_button "Scissors"
      click_button "Rock"
      expect(page).to have_content("Patrick is the RPS Champion of #{Date.today.year}!")
    end
    
  end
end
