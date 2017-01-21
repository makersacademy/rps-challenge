require 'player'

describe Player do
  subject(:player) {described_class.new('Player')}
  describe '#initialize' do
    it 'saves the name' do
      expect(player.instance_variable_get(:@name)).to eq 'Player'
    end
  end

  describe '#make_choice' do
    it 'saves the choice made' do
      player.make_choice(:rock)
      expect(player.instance_variable_get(:@choice)).to eq :rock
    end
  end
end
