# Game class spec file
describe Game do
  let(:player) { double :adam, name: 'Adam' }
  let(:computer) { double :computer, name: 'computer' }
  subject(:game) { described_class.new(player, computer) }

  describe '#new' do
    it 'should initialise Game object with player and computer' do
      expect(game.p1).to eq(player)
      expect(game.p2).to eq(computer)
    end
  end

  describe 'Access players name' do
    it 'Should should have access to players name' do
      expect(game.p1.name).to eq(player.name)
    end
  end

end
