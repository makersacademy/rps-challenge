require 'player'

describe Player do
  subject { described_class.new('Nerdpuff') }
  describe '#initialize' do
    it 'initializes a Player with a name' do
      expect { described_class.new('Nerdpuff') }.to_not raise_error
    end

    it 'saves the username in an instance variable' do
      expect(subject.username).to eq('Nerdpuff')
    end
  end

  describe '#move' do
    it 'allows you to set the move' do
      expect { subject.move = :rock }.to_not raise_error
    end

    it 'allows you to read the move' do
      subject.move = :rock
      expect(subject.move).to eq(:rock)
    end
  end
end
