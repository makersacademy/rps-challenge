require 'game'

describe Game do
  subject(:game) { described_class.new(ruan) }
  let(:ruan) { double :ruan }
  # let(:robot) { double :robot }

  describe '#initialization' do
    it 'initalizes a game' do
      expect(game.current_player).to eq ruan
    end
  end

  describe '#player_selection' do
    it 'should return the button the player clicked' do
      game.player_selection('rock')
      expect(game.user_selection).to eq 'rock'
    end
  end

end
