require 'player'

describe Player do

  subject(:player) { described_class.new('Agata') }

  describe '#initialize' do
    it 'stores player name' do
      expect(player.name).to eq 'Agata'
    end
  end

end
