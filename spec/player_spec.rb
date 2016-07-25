require 'player'

describe Player do

  subject(:player){described_class.new('Aga')}

  context '#initialize' do
    it 'stores player name' do
      expect(player.name).to eq 'Aga'
    end
  end
end
