require 'player'

describe Player do
  subject(:mara)  { Player.new('Mara') }

  describe '#name' do
    it 'returns name' do
      expect(mara.name).to eq 'Mara'
    end
  end

end