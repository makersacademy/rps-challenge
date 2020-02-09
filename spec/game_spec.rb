require 'spec_helper'

describe Game do
  subject(:game) { described_class.create(player_1, player_2) }
  let(:player_1) { double(:a_player) }
  let(:player_2) { double(:a_player) }

  describe '#players' do
    it 'is an array of the players' do
      expect(game.players).to eq([player_1, player_2])
    end
  end

  describe '#player_1' do
    it 'returns player_1' do
      expect(game.player_1).to eq(player_1)
    end
  end

  describe '#player_2' do
    it 'returns player_2' do
      expect(game.player_2).to eq(player_2)
    end
  end

end
