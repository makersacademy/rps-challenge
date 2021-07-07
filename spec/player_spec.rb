require 'player'

describe Player do
  describe '#name' do
    player = Player.new("Genny")
    it 'stores name' do
      expect(player.name).to eq "Genny"
    end
  end
  describe '#rps_choice' do
    player = Player.new("Genny")
    it 'stores rps choice' do
      player.select_rps("Rock")
      expect(player.rps_choice).to eq "Rock"
    end
  end
  
end
