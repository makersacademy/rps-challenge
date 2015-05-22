require 'capybara/rspec'
require './lib/game_logic'

describe GameLogic do

  let(:rock_player) { double :player, choice: "Rock" }
  let(:paper_player) { double :player, choice: "Paper" }
  let(:scissors_player) { double :player, choice: "Scissors" }
  let(:spock_player) { double :player, choice: "Spock" }
  let(:lizard_player) { double :player, choice: "Lizard" }

  context "A game of Rock, Paper, Scissors, Lizard, Spock can be played" do

    it "can result in a tie" do
      expect(subject.result rock_player, rock_player).to eq("It's a tie")
    end

    it "can result in paper beating rock" do
      expect(subject.result rock_player, paper_player).to eq("You win")
    end

    it "can result in scissors beating paper" do
      expect(subject.result paper_player, scissors_player).to eq("You win")
    end

    it "can result in rock beating scissors" do
      expect(subject.result rock_player, scissors_player).to eq("The computer wins")
    end

    it "can result in spock beating rock" do
      expect(subject.result spock_player, rock_player).to eq("The computer wins")
    end

    it "can result in lizard beating paper" do
      expect(subject.result paper_player, lizard_player).to eq("You win")
    end

  end

end


