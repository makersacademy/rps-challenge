require 'player'

describe Player do

  subject(:player) {described_class.new('rock')}

  context 'Create a new player' do
    it 'has a new player' do
      expect(subject.hand).to eq :rock
    end
  end
end
