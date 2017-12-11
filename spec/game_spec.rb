require 'game'

describe Game do
  let(:game) { Game.new("John") }
  let(:game2) { Game.new("Steve", "Roy") }
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

  describe '#multiplayer_fight' do
    it 'sometimes calls a win for player 1' do
      game2.P1.choose(:scissors)
      game2.P2.choose(:paper)
      expect(game2.multiplayer_fight).to eq "Steve wins!"
    end
    it 'sometimes calls a win for player 2' do
      game2.P1.choose(:paper)
      game2.P2.choose(:scissors)
      expect(game2.multiplayer_fight).to eq "Roy wins!"
    end
    it 'sometimes calls a tie' do
      game2.P1.choose(:paper)
      game2.P2.choose(:paper)
      expect(game2.multiplayer_fight).to eq "It's a tie!"
    end
  end
end
