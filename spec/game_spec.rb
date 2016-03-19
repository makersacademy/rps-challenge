require 'game'

describe Game do
  let(:player) { double :Player, name: 'Me' }
  let(:player_class) { double :player_class, new: player }
  subject(:game) { described_class.new(player: player) }

  describe '#self.create' do
    let(:game_class) { described_class }
    it 'creates player objects' do
      expect(player_class).to receive :new
      game_class.create(player1: 'Me', player2: player_class)
    end
  end

  describe '#initialize' do
    it { expect(game.player).to eq player }
  end
end
