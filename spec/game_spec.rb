describe Game do
  subject(:game) { described_class.new }

  describe '#result' do

    it 'player 1 wins' do
      p1 = "rock"
      p2 = "scissors"
      expect(game.result(p1, p2)).to eq 'win'
    end

    it 'player 1 loses' do
      p1 = "rock"
      p2 = "paper"
      expect(game.result(p1, p2)).to eq 'lose'
    end

    it 'its a draw' do
      p1 = "rock"
      p2 = "rock"
      expect(game.result(p1, p2)).to eq 'draw'
    end

  end
end

