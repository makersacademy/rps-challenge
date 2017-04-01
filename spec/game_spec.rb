require 'game'

describe Game do
  subject(:game) { described_class.new(dave,deepblue) }
  let(:dave) { double :dave, attack_method: "Rock" }
  let(:deepblue) { double :deepblue }

  describe '#winner' do
    it 'player wins, Rock -> Scissors' do
      allow(deepblue).to receive(:attack_method).and_return("Scissors")
      expect(game.winner).to eq dave
    end

    it 'computer wins, Rock -> Paper' do
      allow(deepblue).to receive(:attack_method).and_return("Paper")
      expect(game.winner).to eq deepblue
    end

    it 'draw, Rock -> Rock' do
      allow(deepblue).to receive(:attack_method).and_return("Rock")
      expect(game.winner).to eq "Draw"
    end
  end

end
