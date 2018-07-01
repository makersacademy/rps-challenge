require './lib/player.rb'

describe Player do

  describe '#initialize' do
    it 'sets player name on instantiation' do
      player = Player.new(:alan)
      expect(player.name).to eq :alan
    end
  end
end
