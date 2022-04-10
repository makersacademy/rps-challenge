require 'game'

describe Game do
  let(:player) { double "player" }
  let(:player2) { double "player2" }
  let(:computer) { double "computer" }
  let(:game) { described_class.new(player, computer) }
  let(:multiplayer) { described_class.new(player, player2) }

  describe "#computer_move" do 
    it "computer does a random move" do
      allow(game).to receive(:computer_move).and_return("Scissors")
      expect(game.computer_move).to eq("Scissors")
    end
  end

  describe "#new" do
    it 'able to take 2 players when initializing for multiplayer' do
      expect(multiplayer.player2).to eq(player2)
    end
  end

end
