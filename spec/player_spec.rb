require 'player'

describe Player do
  subject(:macey)  { Player.new('Macey') }

  describe '#name' do
    it 'returns name' do
      expect(macey.name).to eq 'Macey'
    end
  end

end
