require 'game'

describe Game do

  subject(:game) {described_class.new(hand_class)}
  let(:hand_class) {double(:hand, new: rock)}
  let(:rock) {double(:hand, plays: nil)}


  describe '#add_options' do
    before do
      game.play_game(rock, rock)
    end
    it 'Creates player1 object' do
      expect(game.instance_variable_get(:@player1)).to eq rock
    end
    it 'Creates player2 object' do
      expect(game.instance_variable_get(:@player2)).to eq rock
    end
    it 'Delegates comparison to instances of hand' do
      expect(rock).to have_received(:plays).with(rock)
    end
  end


end
