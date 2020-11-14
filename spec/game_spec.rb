describe Game do
  let(:player) { double('player', name: 'Human') }
  
  describe '#initialize' do
    let(:game) { Game.new(player) }

    it 'takes in a Player object' do
      expect(game.player).to eq(player)
    end
  end

  describe '.create' do
    it 'creates an instance of Game' do
      expect(Game.create(player)).to be_instance_of(Game)
    end
  end

  describe '.instance' do
    let(:created_game) { Game.create(player) }

    it 'returns the instance of Game created by create' do
      expect(Game.instance).to eq(created_game)
    end
  end
end