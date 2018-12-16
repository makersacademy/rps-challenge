require 'player'

RSpec.describe Player do


  describe '#new' do 
    it 'will store players name at start' do
      player = Player.new("Carol")
      expect(player.player_name).to eq "Carol"
    end
  end


end
