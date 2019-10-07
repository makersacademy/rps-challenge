require 'computer'

describe Computer do
  subject(:game) { described_class.new }

  describe '#computer_choice' do
    it 'works out the winner of the game' do
    allow(game).to receive(:computer_choice).and_return('Paper')
    expect(game.computer_choice).to eq 'Paper'
    end
  end

end
