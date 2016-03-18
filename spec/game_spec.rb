require 'game'

describe Game do

  subject(:game) { described_class.new(p1) }
  let(:p1) {double :player}

  describe '#initialize' do
    it '0.0. initializes with one player' do
      expect(game.p1).to eq p1
    end
  end
end
