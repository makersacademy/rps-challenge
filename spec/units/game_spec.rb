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
    context "when player_1 move is rock" do
      it "wins when player_2_move is scissors" do
        expect(game.result('rock', 'scissors')).to eq :win
      end

      it "draws when player_2_move is rock" do
        expect(game.result('rock', 'rock')).to eq :draw
      end

      it "loses when player_2_move is paper" do
        expect(game.result('rock', 'paper')).to eq :loss
      end
    end

    context "when player_1 move is paper" do
      it "wins when player_2_move is rock" do
        expect(game.result('paper', 'rock')).to eq :win
      end

      it "draws when player_2_move is paper" do
        expect(game.result('paper', 'paper')).to eq :draw
      end

      it "loses when player_2_move is scissors" do
        expect(game.result('paper', 'scissors')).to eq :loss
      end
    end

    context "when player_1 move is scissors" do
      it "wins when player_2_move is paper" do
        expect(game.result('scissors', 'paper')).to eq :win
      end

      it "draws when player_2_move is scissors" do
        expect(game.result('scissors', 'scissors')).to eq :draw
      end

      it "loses when player_2_move is rock" do
        expect(game.result('scissors', 'rock')).to eq :loss
      end
    end

  end
end
