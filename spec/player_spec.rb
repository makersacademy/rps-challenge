require 'app'

describe Player do
  
  context 'New player class' do

    player = Player.new("Adam", "Rock")

    it 'Returns the players name' do
      expect(player.name).to eq "Adam"
    end

    it 'Returns the players weapon' do
      expect(player.weapon).to eq "Rock"
    end

  end
end
