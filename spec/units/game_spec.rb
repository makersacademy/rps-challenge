require 'game'

describe Game do

  subject(:game)  { described_class.new(player_1, player_2, move_list) }
  let(:player_1)  { double 'player 1' }
  let(:player_2)  { double 'player 2' }
  let(:move_list) { double 'an array of moves'}

  describe "#new" do
    it "sets @player_1 using the first passed argument" do
      expect(game.player_1).to eq player_1
    end

    it "sets @player_2 using the second passed argument" do
      expect(game.player_2).to eq player_2
    end

    it "sets @moves using the third past argument" do
      expect(game.moves).to eq move_list
    end
  end

  describe "::create" do
    context "when game not in progress" do
      it "should instantiate a new game" do
        expect(described_class.create(player_1, player_2)).to be_instance_of described_class
      end
    end

    context "when game in progress" do
      it "should not instantiate a new game" do
        existing_game = described_class.create(player_1, player_2)
        expect(described_class.create(player_1, player_2)).to eq existing_game
      end
    end
  end

  describe "::current_game" do
    context "when game in progress" do
      it "returns the current game" do
        existing_game = described_class.create(player_1, player_2)
        expect(described_class.current_game).to eq existing_game
      end
    end

    context "when game not in progress" do
      it "raises 'No current game' error" do
        described_class.instance_variable_set(:@current_game, nil)
        expect { described_class.current_game }.to raise_error "No current game"
      end
    end
  end

  describe "#result" do
    context "when player_1_move not provided" do
      it 'raises "You must choose a move" error' do
        expect { game.result( nil, 'rock') }.to raise_error "You must choose a move"
      end
    end

    context "when game is a draw" do
      it 'calls #draw_result' do
        expect(game).to receive(:draw_result).with('rock', 'rock')
        game.result('rock', 'rock')
      end

      context 'testing specific values' do
        it 'draws when both players play rock' do
          outcome = { result: 'draw', move: 'rock'}
          expect(game.result('rock', 'rock')).to eq outcome
        end

        it 'draws when both players pay paper' do
          outcome = { result: 'draw', move: 'paper' }
          expect(game.result('paper', 'paper')).to eq outcome
        end

        it 'draws when both players play scissors' do
          outcome = { result: 'draw', move: 'scissors' }
          expect(game.result('scissors', 'scissors')).to eq outcome
        end
      end
    end

    context "when player 1 wins" do
      it 'calls win_result' do
        expect(game).to receive(:win_result).with('rock', 'scissors')
        game.result('rock', 'scissors')
      end

      context 'testing specific values' do
        it 'wins when player_1: rock, and player_2: scissors' do
          outcome = { result: 'win', winner: 'rock', loser: 'scissors' }
          expect(game.result('rock', 'scissors')).to include outcome
        end

        it 'wins when player_1: paper, and player_2: rock' do
          outcome = { result: 'win', winner: 'paper', loser: 'rock' }
          expect(game.result('paper', 'rock')).to eq outcome
        end

        it 'wins when player_1: scissors, and player_2: paper' do
          outcome = { result: 'win', winner: 'scissors', loser: 'paper' }
          expect(game.result('scissors', 'paper')).to eq outcome
        end
      end
    end

    context "when player 2 wins" do
      it 'calls loss_result' do
        expect(game).to receive(:loss_result).with('rock', 'paper')
        game.result('rock', 'paper')
      end

      context 'testing specific values' do
        it 'loses when player_1: rock, and player_2: paper' do
          outcome = { result: 'loss', winner: 'paper', loser: 'rock' }
          expect(game.result('rock', 'paper')).to eq outcome
        end

        it 'loses when player_1: paper, and player_2: scissors' do
          outcome = { result: 'loss', winner: 'scissors', loser: 'paper' }
          expect(game.result('paper', 'scissors')).to eq outcome
        end

        it 'loses when player_1: scissors, and player_2: rock' do
          outcome = { result: 'loss', winner: 'rock', loser: 'scissors' }
          expect(game.result('scissors', 'rock')).to eq outcome
        end
      end
    end
  end
end
