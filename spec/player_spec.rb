require 'player'

describe Player do 
  subject(:player) {Player.new("Gina")}


  describe '#name' do
    it 'returns the name of the player' do
      expect(player.name).to eq "Gina"
    end
  end

  describe '#play(rock)' do
    it "if player selects rock attack is set to 'rock' " do
      player.play('rock')
      expect(player.attack).to eq "rock"
    end
    it 'if computer also selects rock' do 
      allow_any_instance_of(Computer).to receive(:select_object).and_return('rock')
      expect(player.play('rock')).to eq "draw"
    end 
    it 'if player selects rock and computer selects paper' do
      
      allow_any_instance_of(Computer).to receive(:select_object).and_return('paper')
      expect(player.play('rock')).to eq "Paper covers rock - You loose"
    end 
    it 'if  player selects rock and computer selects scissors' do
      allow_any_instance_of(Computer).to receive(:select_object).and_return('scissors')
      expect(player.play('rock')).to eq "Rock bashes scissors - You win"
    end
  end 

end 