require 'player'

describe Player do
subject(:player){described_class.new('Jonathan','Rock')}

  describe '#name' do
    it 'returns player name' do
      expect(player.name).to respond_to(:upcase)
    end
  end

  describe '#pick_play' do
    it 'lets player picks rps option' do
      expect(Player::OPTIONS).to include(player.pick_play)
    end
  end

end