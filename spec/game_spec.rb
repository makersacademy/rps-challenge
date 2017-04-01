require 'game'

describe Game do
  subject(:game) { described_class.new(ruan) }
  let(:ruan) { double :ruan }
  # let(:robot) { double :robot }

  describe '#initialization' do
    it 'initalizes a game' do
      expect(game.current_player).to eq ruan
    end

    # it 'contains array of players' do
    #   expect(game.players).to include ruan, robot
    # end
  end
end
