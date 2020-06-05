require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }

  describe '#switch_turns' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player_1
    end

    it 'is player 2 after a switch' do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end

  describe '#winner' do
    it 'shows who won the game' do
      allow(player_1).to receive(:choice).and_return('Paper')
      allow(player_2).to receive(:choice).and_return('Scissors')
      expect(game.winner).to eq player_2
    end
  end

  describe '#loser' do
    it 'shows who lost the game' do
      allow(player_1).to receive(:choice).and_return('Paper')
      allow(player_2).to receive(:choice).and_return('Scissors')
      expect(game.loser).to eq player_1
    end
  end
end
