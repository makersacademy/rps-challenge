require 'game'

describe Game do
  subject(:game) { Game.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }
 
  describe "#result" do 
    it "returns winning message to player" do
      allow(player).to receive(:weapon) { "Rock" }
      allow(computer).to receive(:weapon) { "Scissors" }
      expect(game.result).to eq("You win!")
    end

    it "returns winning message to computer" do
      allow(player).to receive(:weapon) { "Rock" }
      allow(computer).to receive(:weapon) { "Paper" }
      expect(game.result).to eq("Computer wins!")
    end

    it "returns a draw" do
      allow(player).to receive(:weapon) { "Scissors" }
      allow(computer).to receive(:weapon) { "Scissors" }
      expect(game.result).to eq("It is a draw!")
    end
  end
end
