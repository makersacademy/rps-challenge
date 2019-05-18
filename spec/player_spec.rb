require 'player'

describe Player do
  subject(:francesca) { Player.new('Francesca') }

  describe '#name' do
    it 'returns name of player' do
      expect(francesca.name).to eq('Francesca')
    end
  end


end
