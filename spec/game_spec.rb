# Game class spec file
describe Game do
  let(:player) { double :adam, name: 'Adam' }
  # let(:player) { double :player, :name, 'Adam' }
  subject(:game) { described_class.new(player) }

  describe '#new' do
    it 'should initialise Game object with player' do
      expect(game.player).to eq(player)
    end
  end

  describe 'Access players name' do
    it 'Should should have access to players name' do
      expect(game.player.name).to eq(player.name)
    end
  end
end
