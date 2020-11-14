describe Game do
  describe '#initialize' do
    let(:player) { double('player', name: 'Human') }
    let(:game) { Game.new(player) }

    it 'takes in a Player object' do
      expect(game.player).to eq(player)
    end
  end
end