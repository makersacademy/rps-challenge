require 'game'
require 'player'

describe Game do
  let(:player) { double(:player, name: 'jini') }
  subject(:game) { described_class.new(player) }

  describe '#attributes' do
    it 'gets player' do
      expect(game.player).to eq player
    end
  end

  describe '#opponent_choice' do
    it 'makes a random choice' do
      game.choose
      expect([:rock, :paper, :scissors]).to include game.opponent_choice
    end
  end

  describe '#win?' do
    it 'tells me if I\'ve won' do
      allow(player).to receive(:choose).and_return :scissors
      player.choose("scissors")
      allow(game).to receive(:opponent_choice).and_return :rock
      expect(game.win?).to be false
    end
  end

  describe '#tie?' do
    it 'tells me if there is a tie' do
      allow(player).to receive(:choose).and_return :rock
      player.choose("rock")
      allow(game).to receive(:opponent_choice).and_return :rock
      expect(game.tie?).to be true
    end
  end
end
