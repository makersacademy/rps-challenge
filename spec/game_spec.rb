require './lib/game'

describe Game do

  subject(:g) { Game.new('rock')}

  describe '#rand_choice' do
    it 'Selects from rock paper scissors at random' do
      expect(g.rand_choice).to eq('rock').or(eq('paper')).or(eq('scissors'))
    end
  end

  describe '#play'do
    it 'works out who wins(draw)' do
      expect(g.play).to eq("It is a draw!")
    end
  end

  describe '#play'do
    it 'works out who wins(win)' do
      g = Game.new('paper')
      expect(g.play).to eq("You win!")
    end
  end

  describe '#play'do
    it 'works out who wins(lose)' do
      g = Game.new('scissors')
      expect(g.play).to eq("Computer wins!")
    end
  end

end
