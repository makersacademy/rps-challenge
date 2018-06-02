require 'game'

describe Game do
  subject(:game) { described_class.new("paper") }

  describe '#determine_auto_move' do
    it 'randomly chooses a move' do
      expect(["rock","paper","scissors"]).to include(game.determine_auto_move)
    end
  end


end
