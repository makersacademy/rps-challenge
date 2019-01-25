require 'round'

describe Round do

  let(:computer) { double(:computer) }
  let(:lily) { double(:lily) }
  let(:subject) { Round.new(lily, computer) }

  describe '#initialize' do

    it 'should initialize with a player and the computer' do
      expect(subject.players).to eq [lily, computer]
    end

  end

  describe '#current_turn' do

    it 'should define who is playing' do
      expect(subject.current_turn).to eq lily
    end

    it 'should define who is playing' do
      subject.switch_turn
      expect(subject.current_turn).to eq computer
    end
  end

  describe '#store_move' do

    it 'should store each move in an array' do
      expect(lily).to receive(:store_move)
      subject.store_move('rock')
    end
  end
end
