require_relative '../app'

describe RPS do

  subject(:rps) { described_class }
  let(:game) { double :game }

  describe '#self.store_game' do
    it '0.0. stores an instance of game' do
      expect(rps.store_game(game)).to eq(game)
    end
  end

  describe '#self.game' do
    it '1.0. returns a stored game' do
      rps.store_game(game)
      expect(rps.game).to eq(game)
    end
  end
end
