require 'player'

describe Player do

  let(:subject) { described_class.new('Dec') }

  describe '#name' do
    it 'records the player name' do
      expect(subject.name).to eq('Dec')
    end
  end

  describe '#choose' do
    it 'changes choice to be rock' do
      expect { subject.choose('rock') }.to change { subject.choice }.to eq('rock')
    end
  end
end
