require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe 'Class methods' do
    it 'returns instance of game' do
      expect(Game.create(player_1, player_2)).to eq Game.instance
    end
  end

  describe '#round' do
    it 'rocks beats scissors' do
      player_1.stub(:choice) { "rock" }
      player_2.stub(:choice) { "scissors" }
      game.round
      expect(game.winner).to eq(player_1)
    end

    it 'rocks beats scissors' do
      player_1.stub(:choice) { "scissors" }
      player_2.stub(:choice) { "rock" }
      game.round
      expect(game.loser).to eq(player_1)
    end
  end

  describe '#current_player' do
    it 'returns default current player' do
      expect(game.current_player).to eq(player_1)
    end

    it 'switches player' do
      expect { game.switch_player }.to change { game.current_player }.to(player_2)
    end
  end
end
