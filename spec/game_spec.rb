require 'game'

describe Game do
  p subject(:game) { described_class.new(monty)}
  p let(:monty) { double :player, name: "Monty"}

  describe '#initalize' do
    it 'should pass arguments to instance of Player' do
      p "does this show"
      p expect(game.player).to eq monty
    end
  end

end
