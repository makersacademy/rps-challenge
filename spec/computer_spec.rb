require 'computer'

describe Computer do

  let(:computer) { Computer.new }

  describe '#initialize' do
    it 'should return the computer\'s move when calling random method' do
      computer.instance_variable_set(:@random_move, 'ROCK')
      expect(computer.random_move).to eq('ROCK')
    end

    it 'should return the computer\'s move when calling random method' do
      computer.instance_variable_set(:@random_move, 'PAPER')
      expect(computer.random_move).to eq('PAPER')
    end

    it 'should return the computer\'s move when calling random method' do
      computer.instance_variable_set(:@random_move, 'SCISSORS')
      expect(computer.random_move).to eq('SCISSORS')
    end
  end
end
