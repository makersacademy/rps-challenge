require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player, name: "Rosie"}
  let(:player_2) { double :Computer, name: :Computer }

    it "returns the players" do
      expect(game.players).to eq [player_1, player_2]
      expect(game.player_1).to eq player_1
      expect(game.player_2).to eq player_2
    end

    it "returns weapons constant" do
      expect(Game::WEAPONS).to eq [:rock, :paper, :scissors]
    end

    it "returns rules constant" do
      expect(Game::RULES).to eq ({rock: :scissors, scissors: :paper, paper: :rock})
    end

    it "returns true for single player" do
      expect(game.single_player).to eq true
    end

    it "returns win if player_1 wins" do
      allow(player_1).to receive(:weapon).and_return(:rock)
      allow(player_2).to receive(:weapon).and_return(:scissors)
      expect(game.result).to eq :win
    end

    it "returns lose if player_2 wins" do
      allow(player_1).to receive(:weapon).and_return(:rock)
      allow(player_2).to receive(:weapon).and_return(:paper)
      expect(game.result).to eq :lose
    end

    it "returns draw if a draw" do
      allow(player_1).to receive(:weapon).and_return(:rock)
      allow(player_2).to receive(:weapon).and_return(:rock)
      expect(game.result).to eq :draw
    end
  end