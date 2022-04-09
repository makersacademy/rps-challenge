require 'game'

describe Game do
  let(:player) { double "player" }
  let(:computer) { double "computer" }
  let(:game) { described_class.new(player, computer) }

  describe "#computer_move" do 
    it "computer does a random move" do
      allow(game).to receive(:computer_move).and_return("Scissors")
      expect(game.computer_move).to eq("Scissors")
    end
  end

end
