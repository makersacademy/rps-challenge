describe Game do
  let(:player) { double('player', name: 'Human') }
  let(:game) { Game.new(player) }

  describe '#initialize' do
    it 'takes in a Player object' do
      expect(game.player).to eq(player)
    end
  end

  describe '#create' do
    it 'creates an instance of Game' do
      expect(Game.create(player)).to be_instance_of(Game)
    end
  end
end