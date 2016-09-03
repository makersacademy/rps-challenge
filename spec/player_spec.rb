require 'player'

describe Player do

  subject(:player) {described_class.new("Bob", 5)}

  context '#name' do
    it 'returns the name of the player' do
      expect(player.name).to eq "Bob"
    end
  end

  context '#reduce_lives' do
    it 'reduces the lives of the player' do
      player.reduce_lives
      expect(player.instance_variable_get(:@lives)).to eq 4
    end
    it 'returns itself' do
      expect(player.reduce_lives).to eq player
    end
  end

  context '#max_lives' do
    it 'returns the the maximum lives of the player' do
      expect(player.max_lives).to eq 5
    end
  end

  context '#lives' do
    it 'returns the remaining lives of the player' do
      player.reduce_lives
      expect(player.instance_variable_get(:@lives)).to eq 4
    end
  end

end
