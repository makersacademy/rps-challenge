require 'game'

describe Game do
  let(:game) { Game.new("John") }
  describe '#fight_ralph' do
    it 'calls a tie when both players have the same weapon' do
      game.P1.choose(:rock)
      expect(game.fight_ralph(:rock)).to eq "It's a tie!"
    end
    it 'sometimes calls a win for ralph' do
      game.P1.choose(:rock)
      expect(game.fight_ralph(:paper)).to eq "RALPH HAS VANQUISHED HIS PUNY FOE"
    end
    it 'sometimes calls a win for the player' do
      game.P1.choose(:scissors)
      expect(game.fight_ralph(:paper)).to eq "You defeated Ralph! For now..."
    end
  end
end
