require 'game'

describe Game do
subject(:game) { described_class.new(hans, computer) }
let(:hans) { double(:hans) }
let(:computer) { double(:computer) }

  describe '#player1' do
    it 'retrieves the first player' do
      expect(game.player1).to eq(hans)
    end

  end


end
