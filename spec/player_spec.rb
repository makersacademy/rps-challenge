require 'player'

describe Player do

  subject(:player) {described_class.new("Bob")}

  context '#name' do
    it 'returns the name of the player' do
      expect(player.name).to eq "Bob"
    end
  end

  context '#add_win' do
    it 'add 1 to the number of winned games' do
      player.add_win
      expect(player.instance_variable_get(:@wins)).to eq 1
    end
    it 'returns itself' do
      expect(player.add_win).to eq player
    end
  end

  context '#wins' do
    it 'returns the remaining lives of the player' do
      player.add_win
      expect(player.wins).to eq 1
    end
  end
end
