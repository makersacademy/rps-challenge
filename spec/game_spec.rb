require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  context "starting a new game" do
    it "should have an empty player choice" do
      expect(game.player_choice).to be nil
    end
    it "should take a player" do
      expect(game.player).to eq player
    end
    it "should take a computer" do
      expect(game.computer).to eq computer
    end
    it "should not have a victor" do
      expect(game.victor).to be nil
    end
  end

  context "singletons" do
    it "should have create method to create an instance of itself" do
      expect(Game.create(player, computer)).to be_a(Game)
    end
    it "should have an instance method to show the instance" do
      expect(Game.instance).to be_a(Game)
    end
  end

  context "player's turn" do
    before do
      allow(player).to receive(:rock) { "Rock" }
      allow(player).to receive(:paper) { "Paper" }
      allow(player).to receive(:scissors) { "Scissors" }
    end
    it "should store rock" do
      game.rock
      expect(game.player_choice).to eq "Rock"
    end
    it "should store paper" do
      game.paper
      expect(game.player_choice).to eq "Paper"
    end
    it "should store scissors" do
      game.scissors
      expect(game.player_choice).to eq "Scissors"
    end
  end
  context "computer's turn" do
    before do
      allow(computer).to receive(:pick_one) { "Rock" }
      allow(computer).to receive(:final_choice) { "Rock" }
    end
    it "should store the computer's choice" do
      game.computer_turn
      expect(game.computer_choice).to eq "Rock"
    end
  end
  context "winning the game" do
    before do
    allow(player).to receive(:name) { player }
    allow(computer).to receive(:name) { computer }
    end
    it "rock beats scissors" do
      allow(game).to receive(:player_choice) { "Rock" }
      allow(game).to receive(:computer_choice) { "Scissors" }
      game.determine_winner
      expect(game.victor).to eq player
    end
    it "scissors beat paper" do
      allow(game).to receive(:player_choice) { "Paper" }
      allow(game).to receive(:computer_choice) { "Scissors" }
      game.determine_winner
      expect(game.victor).to eq computer
    end
    it "paper beats rock" do
      allow(game).to receive(:player_choice) { "Paper" }
      allow(game).to receive(:computer_choice) { "Rock" }
      game.determine_winner
      expect(game.victor).to eq player
    end
    it "is a draw" do
      allow(game).to receive(:player_choice) { "Paper" }
      allow(game).to receive(:computer_choice) { "Paper" }
      game.determine_winner
      expect(game.victor).to eq "Nobody"
    end
  end
  describe "#restart" do
    it "should set victor to nil" do
      game.restart
      expect(game.victor).to be nil
    end
  end
end
