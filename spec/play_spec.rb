require 'play'

describe Game do
  let(:game) { Game.new("Alfonso") }
  describe '#fight comp' do
    it 'tie, if same choice' do
      game.p1.choose(:rock)
      expect(game.comp_game(:rock)).to eq "It's a tie!"
    end
    it 'comp win' do
      game.p1.choose(:rock)
      expect(game.comp_game(:paper)).to eq "Comp win"
    end
    it 'Player win' do
      game.p1.choose(:scissors)
      expect(game.comp_game(:paper)).to eq "Player win"
    end
  end
end
