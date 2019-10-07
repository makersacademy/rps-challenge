require 'player'

describe Player do
  let(:subject) { described_class.new('Rick') }

  describe '#initialize' do
    it 'sets the players name' do
      expect(subject.name).to eq 'Rick'
    end
  end

  describe '#picks' do
    it 'sets the players rps choice' do
      subject.picks('Rock')
      expect(subject.choice).to eq 'Rock'
    end
  end
end
