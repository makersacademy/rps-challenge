require 'player'

describe Player do

  subject(:player) { described_class.new('Josu') }

  context 'when initialized' do
    it 'has a name' do
      expect(subject.name).to eq 'Josu'
    end
  end
end
