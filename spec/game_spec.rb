require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe 'Player instances' do
    it 'returns player_1 instance' do
      expect(game.player_1).to eq player_1
    end

    it 'returns player_2 instance' do
      expect(game.player_2).to eq player_2
    end
  end

  describe 'Class methods' do
    it 'returns instance of game' do
      expect(Game.create(player_1, player_2)).to eq Game.instance
    end
  end

  describe '#round' do
    it 'rocks beats scissors' do
      player_1.stub(:choice) { "rock" }
      player_2.stub(:choice) { "scissors" }
      game.round(player_1, player_2)
      expect(game.winner).to eq(player_1)
    end
  end
end
