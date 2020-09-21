describe Game do 
  describe '#create' do 
    it 'creates an instance of game with an instance of Player as the player' do
      game = Game.create('ollie')
      expect(game.player).to be_an_instance_of(Player)
    end

    it 'creates an instance of game with a name' do
      game = Game.create('ollie')
      expect(game.player.name).to eq 'ollie'
    end
  end

  describe '#instance' do 
    it 'returns an instance of game' do
      game = Game.create('ollie')
      expect(Game.instance).to be_an_instance_of(Game)
    end
  end
end