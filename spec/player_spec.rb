require 'player'

describe Player do
  context 'name' do
    it "should remembers player's name" do
      player_one = Player.new('Alex')
      expect(player_one.name).to eq('Alex')
    end
  end
end
