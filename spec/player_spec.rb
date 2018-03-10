require 'player'

describe Player do
  subject(:cleopatra) { Player.new('Cleopatra') }

  describe '#name' do
    it 'returns the user name' do
      expect(cleopatra.name).to eq 'Cleopatra'
    end
  end
end
