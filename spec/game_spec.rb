require 'game'

describe Game do
  subject(:game) { Game.new(player_1, player_2, "one", "classic") }
  let(:player_1) {  double :player_1, name: "Sergio", choice: "paper", to_i: 1 }
  let(:player_2) {  double :player_2, name: "Computer", choice: "paper", to_i: 1 }
  let(:rock) {double :rock, name: "Rock", choice: "rock", to_i: 2}
  let(:scissors) {double :scissors, name: "Scissors", choice: "scissors", to_i: 0}
  let(:paper) {double :paper, name: "Paper", choice: "paper", to_i: 1}
  context "On initalization" do
    it "Retrieves the first player" do
      expect(game.player_1).to eq player_1
    end

    it "Retrieves the second player" do
      expect(game.player_2).to eq player_2
    end
  end

  context ".create" do
    it "responds to .create" do
      expect(Game.create(player_1,player_2,"one","classic")).to be_instance_of(described_class)
    end
  end

  context ".instance" do
    it "responds to .instance" do
      expect(Game.instance).to be_instance_of(described_class)
    end
  end

  context "#computer?" do
    it "checks if player2 is the computer" do
      expect(game.computer?).to be true
    end
  end

  context "#results" do
    let(:game_rs) { Game.new(rock, scissors, "one", "classic") }
    let(:game_rp) { Game.new(rock, paper, "one", "classic") }
    it "provides result draw for Rock and Rock" do
      expect(game.winner).to eq :draw
    end

    it "provides winner Rock for Rock and Scissors" do
      expect(game_rs.winner).to eq rock
    end

    it "provides winner Paper for Rock and Paper" do
      expect(game_rp.winner).to eq paper
    end

    it "provides loser Rock for Rock and Paper" do
      expect(game_rp.loser).to eq rock
    end

    it "#draw?" do
      expect(game.draw?).to be true
    end
  end



end