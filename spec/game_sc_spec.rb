require 'game_sc'

describe Scissors do
  subject(:pickscissors) { Scissors.new }
  describe '#game' do
    it 'returns true when called' do
      expect(pickscissors.game).to be_truthy
    end
  end
end
