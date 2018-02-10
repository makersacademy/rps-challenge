require 'player'

describe Player do

  subject(:player) { Player.new('Marcus') }

  describe '#initialize' do
    it 'insantiates player with a name' do
      expect(player.name).to eql('Marcus')
    end
  end

  describe '#set_move' do
    it 'sets a players move' do
      player.set_move('rock')
      expect(player.move).to eql('rock')
    end
  end
end
