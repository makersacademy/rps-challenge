require 'player'

describe Player do
  subject(:player_one) { Player.new('Name One') }

  describe '#name' do
    it 'returns the name' do
      expect(player_one.name).to eq 'Name One'
    end
  end
end
