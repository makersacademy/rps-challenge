require 'player'

describe Player do

  subject(:player){ described_class.new("Ollie") }
	
  context '#initialize' do
    it 'Sets a player\'s name, which can be accessed' do
      expect(player.name).to eq "Ollie"
    end
  end

  context '#choice=' do
    it 'sets the player\'s choice, which can be accessed in capitals' do
      player.choice='rock'
      expect(player.choice).to eq 'ROCK'
    end
  end

end