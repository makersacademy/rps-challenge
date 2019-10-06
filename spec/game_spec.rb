require_relative '../lib/game'

describe Game do
  subject(:game) { described_class.new(player, move)}
  let(:player) { double :player }
  let(:move) { double :move, player_turns: ["Rock"], computer_turns: ["Paper"] }

  describe '#last_action' do
    it 'returns rock as the last action' do
      expect(game.player_last_action).to eq "Rock"
    end
  end

  describe '#computer_last_action' do
    it 'returns paper' do
      expect(game.computer_last_action).to eq "Paper"
    end
  end

  describe '#outcome' do
    xit 'declares Boris the Winner' do
      game.player_last_action("Rock")
      allow(Kernel).to receive(:rand).and_return(2)

      expect(game.outcome).to eq "wins"
    end
  end
end
