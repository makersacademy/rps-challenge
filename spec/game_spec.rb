require 'game'

describe Game do
  let(:game) { Game.new("John") }
  describe '#fight_ralph' do
    it 'calls a tie when both players have the same weapon' do
      game.P1.choose(:rock)
      expect{ game.fight_ralph(:rock) }.to output("It's a tie!\n").to_stdout
    end
    it 'sometimes calls a win for ralph' do
      game.P1.choose(:rock)
      expect{ game.fight_ralph(:paper) }.to output("Ralph has vanquished his puny foe\n").to_stdout
    end
    it 'sometimes calls a win for the player' do
      game.P1.choose(:scissors)
      expect{ game.fight_ralph(:paper) }.to output("You defeated Ralph! For now...\n").to_stdout
    end
  end
end
