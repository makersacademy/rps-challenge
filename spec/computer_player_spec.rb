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
    it 'should sometimes choose rock' do
      allow(Kernel).to receive(:rand).and_return 1
      computer.rps
      expect(computer.choice).to eq 'rock'
    end

    it 'should sometimes choose paper' do
      allow(Kernel).to receive(:rand).and_return 2
      computer.rps
      expect(computer.choice).to eq 'paper'
    end

    it 'should sometimes choose scissors' do
      allow(Kernel).to receive(:rand).and_return 3
      computer.rps
      expect(computer.choice).to eq 'scissors'
    end
  end

end
