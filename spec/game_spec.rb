require 'game'

describe Game do
  subject(:game) { described_class.new(p1, p2) }
  let(:p1) { double(:player, name: "Quentin") }
  let(:p2) { double(:player, name: "Lucas") }

  describe 'initializing players' do
    it 'returns p1 name' do
      expect(game.p1).to eq p1
    end
    it 'returns p2 name' do
      expect(game.p2).to eq p2
    end
  end

  describe 'class methods' do
    context 'created' do
      before do
        Game.create(p1, p2)
      end
      it 'returns p1' do
        expect(Game.instance.p1).to eq p1
      end

      it 'returns p2' do
        expect(Game.instance.p2).to eq p2
      end
    end
  end

  describe 'RPS logic' do
    it 'Rock beats Scissors' do
      allow(game.p1).to receive(:move).and_return("Rock")
      allow(game.p2).to receive(:move).and_return("Scissors")
      expect(game.clash(game.p1.move, game.p2.move)).to eq "#{p1.name} WINS!"
    end
    it 'Scissors beats Paper' do
      allow(game.p1).to receive(:move).and_return("Scissors")
      allow(game.p2).to receive(:move).and_return("Paper")
      expect(game.clash(game.p1.move, game.p2.move)).to eq "#{p1.name} WINS!"
    end
    it 'Paper beats Rock' do
      allow(game.p1).to receive(:move).and_return("Paper")
      allow(game.p2).to receive(:move).and_return("Rock")
      expect(game.clash(game.p1.move, game.p2.move)).to eq "#{p1.name} WINS!"
    end
  end

end
