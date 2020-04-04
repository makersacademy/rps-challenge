require 'game'

describe Game do
  let(:player) { double(:player) }
  let(:opponent) { double(:opponent) }
  let(:game) { described_class.new(player, opponent) }

  describe '#result' do
    it 'player can win' do
      allow(game).to receive(:draw?).and_return(false)
      allow(game).to receive(:win?).and_return(true)
      expect(game.result).to eq :win
    end

    it 'player can draw' do
      allow(game).to receive(:draw?).and_return(true)
      expect(game.result).to eq :draw
    end

    it 'player can lose' do
      allow(game).to receive(:draw?).and_return(false)
      allow(game).to receive(:win?).and_return(false)
      expect(game.result).to eq :lose
    end
  end

  describe '#past_totals' do
    it 'drawing increases the count' do
      allow(game).to receive(:draw?).and_return(true)
      expect(game.past_totals).to eq({ win: 0, draw: 1, lose: 0 })
    end

  end

end
