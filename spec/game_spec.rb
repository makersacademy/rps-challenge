require 'game'

describe Game do

  subject(:game) { described_class.new(p1, p2) }
  let(:p1) {double :player}
  let(:p2) {double :computer}

  describe '#initialize' do
    it '0.0. initializes with one player' do
      expect(game.p1).to eq p1
    end
    it '0.1. initializes with one computer' do
      expect(game.p2).to eq p2
    end
  end
end
