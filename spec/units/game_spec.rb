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
end
