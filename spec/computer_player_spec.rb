require 'computer_player'

describe ComputerPlayer do

  subject(:computer) { described_class.new }

  describe 'defaults' do
    it 'should initialize with a rock' do
      expect(computer.choice).to eq :rock
    end

    it 'should initialize with a name' do
      expect(computer.name).to eq 'The Computer'
    end

    it 'should initialize with an empty score' do
      expect(computer.score).to eq 0
    end

    it 'should not be a human' do
      expect(computer.computer).to be true
    end
  end

  describe '#RPS' do
    it 'should sometimes choose rock' do
      allow(Kernel).to receive(:rand).and_return 0
      computer.rps
      expect(computer.choice).to eq :rock
    end

    it 'should sometimes choose paper' do
      allow(Kernel).to receive(:rand).and_return 1
      computer.rps
      expect(computer.choice).to eq :paper
    end

    it 'should sometimes choose scissors' do
      allow(Kernel).to receive(:rand).and_return 2
      computer.rps
      expect(computer.choice).to eq :scissors
    end
  end

  describe '#add_score' do
    it 'should add a point to the score' do
      computer.add_score
      expect(computer.score).to eq 1
    end
  end

end
