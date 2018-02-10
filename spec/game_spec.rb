require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:computer) { double 'A computer', rand_choice: 'Rock' }

  describe '#choose_winner' do
    it 'chooses a winner depending on choices made' do
      expect(game.choose_winner('Paper', computer.rand_choice)).to eq 'player'
    end
  end
end
