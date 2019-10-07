require 'player'

describe Player do

  describe 'set name' do
    it 'takes the name and returns it' do
      player = Player.new("Adam", "human")
      expect(player.name).to eq "Adam"
    end
  end
end
