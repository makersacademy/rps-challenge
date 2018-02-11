require 'player'

describe Player do

  subject(:player) { described_class.new('Josu') }

  context 'when initialized' do
    it 'has a name' do
      expect(subject.name).to eq 'Josu'
    end
  end

  context 'when user chooses option' do
    it 'raises error if chosen option does not exist' do
      expect{ player.choose_option('Ladder') }.to raise_error { "Invalid option" }
    end
  end
end
