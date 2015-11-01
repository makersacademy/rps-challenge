require 'game'

describe Game do
  let(:game){ described_class.new(player, computer)}
  let(:player){double(:player, choice: "Rock")}
  let(:computer){double(:computer, choice: "Scissors" )}
  context "When there is a draw"
    it 'calculates the outcome of a game' do
      allow(computer).to receive(:choice).and_return("Rock")
      game.calculate
      expect(game.outcome).to eq("Draw")
    end
  context "When the player wins" do
    it 'calculates the outcome of a game' do
      game.calculate
      expect(game.outcome).to eq("You Win!")
    end
  end
  context "When the player looses" do
    it 'calculates the outcome of a game' do
      allow(computer).to receive(:choice).and_return("Paper")
      game.calculate
      expect(game.outcome).to eq("You Loose!")
    end
  end
end
