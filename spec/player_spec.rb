require 'player'

describe Player do

  subject(:player) {Player.new("David")}

  describe '#name' do
    it 'returns the player name' do
      expect(player.name).to eq "David"
    end
  end

end
