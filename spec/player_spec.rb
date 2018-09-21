require 'player'

describe Player do

  subject(:damo) { Player.new("damo") } # stub

  describe 'it returns player name and move' do
    it 'prints the name of player' do
      expect(damo.player_name).to eq("damo")
      # expect(damo.player_move).to eq("r")
    end
  end

end
