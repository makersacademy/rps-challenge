require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  it 'creates a Game class instance' do
    expect(game).to be_instance_of(Game)
  end

  describe '#player_1' do
    it 'saves player_1 in instance variable' do
      expect(game.player_1).to eq(player_1)
    end
  end

  describe '#player_2' do
    it 'saves player_1 in instance variable' do
      expect(game.player_2).to eq(player_2)
    end
  end

  describe '#result' do
    context 'player 1 picking Rock and computer picking Paper' do
      it 'calculates the winner' do
        expect(game.result("Rock", "Paper")).to eq(:lose)
      end
    end

    context 'player 1 picking Scissors and computer picking Paper' do
      it 'calculates the winner' do
        expect(game.result("Scissors", "Paper")).to eq(:win)
      end
    end
  end
end
