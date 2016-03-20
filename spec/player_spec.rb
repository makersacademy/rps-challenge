require 'player'

describe Player do

subject(:player) {described_class.new(:name)}

  describe '#name' do
    it 'should return the name of a player' do
      expect(player.name).to be_a Symbol
    end
  end
end