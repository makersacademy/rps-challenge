require 'game'

describe Game do
  subject(:game) { described_class.new(p1, p2) }
  let(:p1) { double(:player) }
  let(:p2) { double(:player) }

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

end
