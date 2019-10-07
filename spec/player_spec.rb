require 'player'

describe Player do
  subject(:spock) { Player.new('Spock') }
  describe '#name' do
    it 'returns same name' do
      expect(spock.name).to eq "Spock"
    end
  end
end
