require 'player'

describe Player do

  let(:subject) { described_class.new('Dec') }

  describe '#name' do
    it 'records the player name' do
      expect(subject.name).to eq('Dec')
    end
  end
end
