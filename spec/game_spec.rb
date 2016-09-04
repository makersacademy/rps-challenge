require 'game'

describe Game do

  subject(:game) {described_class.new(hand_class)}
  let(:hand_class) {double(:hand, new: rock)}
  let(:rock) {double(:hand, plays: nil)}

  describe '#play_game' do
    it 'Delegates comparison to instances of hand' do
      game.play_game(rock, rock)
      expect(rock).to have_received(:plays).with(rock)
    end
  end
end
