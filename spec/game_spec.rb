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
      allow(game).to receive(:opponent_choice).and_return :rock
      expect(game.opponent_choice).to eq :rock
    end
  end
end
