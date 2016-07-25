require 'player'

describe Player do

  subject(:player) {Player.new('Tommy')}

  describe "#name" do
    it 'returns the name' do
     expect(player.player_1_name).to eq "Tommy"
    end
  end

end
