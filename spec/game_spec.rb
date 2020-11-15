describe Game do
  let(:player) { double('player', name: 'Human') }
  let(:game) { Game.new(player) }

  describe '#initialize' do
    it 'takes in a Player object' do
      expect(game.player).to eq(player)
    end

    it 'has a CPU opponent injected' do
      expect(game.cpu).to be_a_kind_of(Object)
    end
  end

  describe '.create' do
    it 'creates an instance of Game' do
      expect(Game.create(player)).to be_instance_of(Game)
    end
  end

  describe '.instance' do
    it 'returns the instance of Game created by create' do
      created_game = Game.create(player)
      expect(Game.instance).to eq(created_game)
    end
  end

  describe '#play_round' do
    it 'calls the Player choose method' do
      expect(player).to receive(:choose).with('rock')
      game.play_round('rock')
    end
  end
end