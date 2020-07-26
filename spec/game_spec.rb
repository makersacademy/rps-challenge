 require "game"

describe Game do
    describe '#play R,P,S' do
    # subject(:game) { described_class.new }
    it 'give an option to choose from' do
        game = Game.new
        expect(game).to respond_to :pick
      end
    end
end
