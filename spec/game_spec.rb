require 'game'

describe Game do
  subject(:game) {described_class.new(player)}
  let(:player) {double(:player)}

  describe '#initialize' do
    it 'saves the current player' do
      expect(game.instance_variable_get(:@player)).to eq player
    end
  end
end
