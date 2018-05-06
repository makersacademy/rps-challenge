require 'bot'

describe Bot do

  describe 'available moves' do
    it 'intializes with a list of available moves in an array' do
      expect(subject.instance_variable_get(:@available_moves)).to eq(['rock', 'paper' , 'scissors'])
    end
  end

  describe 'random_move' do
    it 'returns a move at random from available_moves' do
      allow_any_instance_of(Array).to receive(:sample).and_return('rock')
      expect(subject.random_move).to eq('rock')
    end
  end
end
