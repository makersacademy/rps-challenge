require 'player'

describe Player do
  describe '::new' do
    it 'should store the players name' do
      player = Player.new("Bob")
      expect(player.name).to eql("Bob")
    end
  end
end
