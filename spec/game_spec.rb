require 'game'

describe RPS do
  subject(:pickrock) { RPS.new }
  describe '#game' do
    it 'returns true when called' do
      expect(pickrock.game).to be_truthy
    end
  end
end
