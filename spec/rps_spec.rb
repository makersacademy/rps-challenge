require_relative '../app.rb'

describe RPS do

  subject(:rps) { described_class }
  let(:new_game) { double :game }
  let(:stored_game) { double :game }

  describe '#self.store_game' do
    it '0.0. stores an instance of game' do
      expect(rps.store_game(new_game)).to eq(new_game)
    end
  end

  describe '#self.game' do
    it '1.0. returns a stored game' do
      rps.store_game(stored_game)
      expect(rps.game).to eq(stored_game)
    end
  end
end
