require 'spec_helper'

describe Game do
  subject(:game) { described_class.new(player_1, player_2)}
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }

  describe '#players' do
    it 'is an array of the players' do
      expect(game.players).to eq([player_1, player_2])
    end
  end
end