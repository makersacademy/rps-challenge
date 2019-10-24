require_relative '../lib/game'

describe Game do
  subject(:game) { described_class.new(player, move)}
  let(:player) { double :player }
  let(:move) { double :move, player_turns: ["Rock"], computer_turns: ["Scissors"] }

  describe '#last_action' do
    it 'returns rock as the last action' do
      expect(game.player_last_action).to eq "Rock"
    end
  end

  describe '#computer_last_action' do
    it 'returns scissors' do
      expect(game.computer_last_action).to eq "Scissors"
    end
  end

  describe '#outcome' do
    it 'declares Boris the Winner' do
      allow(Kernel).to receive(:rand).and_return(2)
      game.player_last_action


      expect(game.outcome).to eq :win
    end
  end
end
