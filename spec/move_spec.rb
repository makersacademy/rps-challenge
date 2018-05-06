require 'move'

describe Move do

  let(:move) { Move.new }

  describe '#initialize' do
    it 'should return robots move when calling random method' do
      move.instance_variable_set(:@random, 'ROCK')
      expect(move.random).to eq('ROCK')
    end
  end

end
