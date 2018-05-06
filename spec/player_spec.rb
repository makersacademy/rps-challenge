require 'player'

describe Player do

subject(:player) { described_class.new("Bob") }

  describe 'add player name' do
    it 'has a name' do
      expect(player.name).to eq "Bob"
    end
  end
end
