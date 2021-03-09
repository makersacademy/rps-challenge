require 'player'

describe Player do

  subject(:player) { Player.new("Bobby") }

  it 'creates a new instance of Player' do
    expect(player).to be_instance_of(Player)
  end

  describe '#name' do
    it 'prints the name of the current player' do
      expect(player.name).to eq("Bobby")
    end
  end

end
