describe Game do

  subject(:game) { described_class.new(player) }
  let(:player) { double :player }

  describe '#initialize' do

    it 'receives instance of player' do
      expect(game.player).to be player
    end

  end

  describe '#self.save_instance' do

    it 'saves instance of itself' do
      Game.save_instance(player)
      expect(Game.instance).to be_instance_of Game
    end

  end

end
