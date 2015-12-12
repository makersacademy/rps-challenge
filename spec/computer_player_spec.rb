require 'computer_player'

describe ComputerPlayer do

  subject(:computer) { described_class.new }

  describe 'defaults' do
    it 'should initialize with a nil choice' do
      expect(computer.choice).to eq nil
    end

    it 'should initialize with a name' do
      expect(computer.name).to eq 'Computer'
    end
  end

  describe '#RPS' do
    it 'should choose a random RPS option' do
      computer.rps
      expect(computer.choice).to_not be nil
    end

    it 'should choose rock' do
      allow(Kernel).to receive(:rand).and_return 1
      computer.rps
      expect(computer.choice).to eq 'rock'
    end

    it 'should choose paper' do
      allow(Kernel).to receive(:rand).and_return 11
      computer.rps
      expect(computer.choice).to eq 'paper'
    end

    it 'should choose scissors' do
      allow(Kernel).to receive(:rand).and_return 21
      computer.rps
      expect(computer.choice).to eq 'scissors'
    end
  end

end
