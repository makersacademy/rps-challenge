require 'lib/game'

subject(:game) {described_class.create}

describe Game do

  it "stores the user's name" do
    game.set_name("Bob")
    expect(game.name).to eq "Bob"
  end

  it "has a play method" do
    expect(game).to respond_to (:play)
  end

  it "is doesn't have a constructor" do
    expect(game).not_to respond_to(:new)
  end

  it "is initialised with a class method that stores the created instance in a class variable" do
    expect(game.game).to be an_instance_of Game
  end

  it "is set to not played by default" do
    expect(game.played?).to eq false
  end

  it "lets you know if game was played" do
    game.play("paper")
    expect(game.played?).to eq true
  end

  context "#play" do
    it "saves the user's choice" do
      game.play("paper")
      expect(game.users_choice).to eq "paper"
    end
    it "generates a random rock, paper or scissors choice" do
      game.play("paper")
      expect(["rock","paper","scissors"]).to include(game.bots_choice)
    end
    it "win when user: paper, bot: rock" do
      game.play("paper")
      allow(game).to receive_messages(bots_choice: "rock")
      expect(game.outcome).to eq "You win!"
    end
    it "loose when user: paper, bot: scissors" do
      game.play("paper")
      allow(game).to receive_messages(bots_choice: "scissors")
      expect(game.outcome).to eq "You loose"
    end
    it "tie when user: paper, bot: paper" do
      game.play("paper")
      allow(game).to receive_messages(bots_choice: "paper")
      expect(game.outcome).to eq "You tied"
    end
    it "win when user: rock, bot: scissors" do
      game.play("rock")
      allow(game).to receive_messages(bots_choice: "scissors")
      expect(game.outcome).to eq "You win!"
    end
    it "loose when user: rock, bot: paper" do
      game.play("rock")
      allow(game).to receive_messages(bots_choice: "paper")
      expect(game.outcome).to eq "You loose"
    end
    it "tie when user: rock, bot: rock" do
      game.play("rock")
      allow(game).to receive_messages(bots_choice: "rock")
      expect(game.outcome).to eq "You tied"
    end
    it "win when user: scissors, bot: paper" do
      game.play("scissors")
      allow(game).to receive_messages(bots_choice: "paper")
      expect(game.outcome).to eq "You win!"
    end
    it "loose when user: scissors, bot: rock" do
      game.play("scissors")
      allow(game).to receive_messages(bots_choice: "rock")
      expect(game.outcome).to eq "You loose"
    end
    it "tie when user: scissors, bot: scissors" do
      game.play("scissors")
      allow(game).to receive_messages(bots_choice: "scissors")
      expect(game.outcome).to eq "You tied"
    end
  end
end
