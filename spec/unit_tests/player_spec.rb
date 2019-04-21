require './lib/player'

describe Player do

  let(:player) { Player.new('Dominic White') }

  describe '#name' do
    it 'returns the same name' do
      expect(player.name).to eq 'Dominic White'
    end
  end
end
