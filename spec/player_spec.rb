require 'player'

describe Player do 

  describe '#name' do
    it 'returns the name of the player' do
      player = Player.new("Gina")
      expect(player.name).to eq "Gina"
    end
  end

  describe 'player selects rock' do
    it "if player selects rock attack is set to 'rock' " do
      player = Player.new("Gina")
      player.play('rock')
      expect(player.attack).to eq "rock"
    end
    xit 'if player selects rock and computer selects rock' do 
      player = Player.new("Gina")
      expect(player.compare).to eq "draw"
    end 
  end 

end 