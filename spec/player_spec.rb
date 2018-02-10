require 'player'

describe Player do

  subject(:player_1) { described_class.new("Telgi") }

  describe '#name' do
    it 'returns the name of the player' do
      expect(player_1.name).to eq "Telgi"
    end
  end

end
