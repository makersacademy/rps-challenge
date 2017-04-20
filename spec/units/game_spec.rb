require './lib/game'
require "spec_helper"

describe Game do

  context "singleton behaviour" do
    it "is initialised with a class method that stores the created instance in a class variable" do
      Game.create
      expect(Game.game).to be_an_instance_of Game
    end

    it "is doesn't have a constructor" do
      expect(Game.game).not_to respond_to(:new)
    end
  end

  context "when initialised" do

    subject(:game) {described_class.create}

    it "stores the user's name" do
      game.set_name("Bob")
      expect(game.name).to eq "Bob"
    end

    it "is set to not played by default" do
      expect(game.played?).to eq false
    end
  end

  context "#play" do

    subject(:game) {described_class.create}

    it "lets you know if game was played" do
      game.play("paper")
      expect(game.played?).to eq true
    end

    it "saves the user's choice" do
      game.play("paper")
      expect(game.users_choice).to eq "paper"
    end

    it "generates a random rock, paper or scissors choice" do
      game.play("paper")
      expect(["rock","paper","scissors"]).to include(game.bots_choice)
    end
    it "win when user: paper, bot: rock" do
      allow(game).to receive_messages(random_choice: "rock")
      game.play("paper")
      expect(game.outcome).to eq "You win!"
    end
    it "loose when user: paper, bot: scissors" do
      allow(game).to receive_messages(random_choice: "scissors")
      game.play("paper")
      expect(game.outcome).to eq "You loose"
    end
    it "tie when user: paper, bot: paper" do
      allow(game).to receive_messages(random_choice: "paper")
      game.play("paper")
      expect(game.outcome).to eq "You tied"
    end
    it "win when user: rock, bot: scissors" do
      allow(game).to receive_messages(random_choice: "scissors")
      game.play("rock")
      expect(game.outcome).to eq "You win!"
    end
    it "loose when user: rock, bot: paper" do
      allow(game).to receive_messages(random_choice: "paper")
      game.play("rock")
      expect(game.outcome).to eq "You loose"
    end
    it "tie when user: rock, bot: rock" do
      allow(game).to receive_messages(random_choice: "rock")
      game.play("rock")
      expect(game.outcome).to eq "You tied"
    end
    it "win when user: scissors, bot: paper" do
      allow(game).to receive_messages(random_choice: "paper")
      game.play("scissors")
      expect(game.outcome).to eq "You win!"
    end
    it "loose when user: scissors, bot: rock" do
      allow(game).to receive_messages(random_choice: "rock")
      game.play("scissors")
      expect(game.outcome).to eq "You loose"
    end
    it "tie when user: scissors, bot: scissors" do
      allow(game).to receive_messages(random_choice: "scissors")
      game.play("scissors")
      expect(game.outcome).to eq "You tied"
    end
  end
end
