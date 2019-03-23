require './models/player.rb'

describe Player do

  subject(:player_1) { Player.new('Pusheen', nil) }
  
  describe '#name' do

    it 'returns the name of the player' do
      expect(player_1.name).to eq "Pusheen"
    end

  end

end
