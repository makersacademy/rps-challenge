require 'game'

describe 'Game' do
  let(:real_player) { double(:player) }
  let(:computer_player) { double(:computer_player) }
  let(:winner_calculator) { double(:winner_calculator) }
  let(:game) { Game.new(real_player, computer_player, winner_calculator) }

  describe '.instance' do
    it 'returns a Game' do
      Game.create(real_player, computer_player)
      expect(Game.instance).to be_a(Game)
    end

    it 'returns the same Game each time' do
      Game.create(real_player, computer_player)
      expect(Game.instance).to be(Game.instance)
    end
  end

  describe '#play' do
    it 'returns the player who won' 
  end
end