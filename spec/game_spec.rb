require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) {double :P1, name: "P1", make_move: :rock}
  let(:player2) {double :P2, name: "P2", make_move: :scissors}
  moves = [:rock, :paper, :scissors, :lizard, :Spock]

  it "should return player 1's name" do
    expect(game.player1_name).to eq "P1"
  end

  it "should return player 2's name" do
    expect(game.player2_name).to eq "P2"
  end

  it "should initialize with a CPU P2 by default" do
    expect(Game.new(player1).player2_name).to eq "CPU"
  end

  context "moves" do
    it "should make moves" do
      expect(player1).to receive(:make_move).with(:lizard)
      game.get_move_p1 :lizard
    end

    it "should make moves with an argument" do
      expect(player1).to receive(:make_move).with(:paper)
      game.get_move_p1 :paper
    end

    it "should make Computer moves" do
      expect(game.get_move_p2).to eq :scissors
    end
  end

  context "Draw states" do
    it "should decide draw a non state" do
      game.get_move_p1 :rock
      game.get_move_p2
      expect(game).not_to be_a_draw
    end

    moves.each do |move|
      context "Player 1 and 2 both play #{move}" do
        it "should be a draw" do
          allow(player1).to receive(:make_move).and_return move
          allow(player2).to receive(:make_move).and_return move
          game.get_move_p2
          game.get_move_p1 move
          expect(game).to be_a_draw
        end
      end
    end
  end

  context "Win states" do

    context "Player 1 victories" do
      Game::WIN_HASH.each do |move_1, moves|

        move_2 = moves.sample
        before (:each) {
          allow(player1).to receive(:make_move).and_return move_1
          allow(player2).to receive(:make_move).and_return move_2
          game.get_move_p1 move_1
          game.get_move_p2
        }
        context "Player 1 plays #{move_1}, Player 2 plays #{move_2}" do
          it "Player 1 should win" do
            expect(game.winner).to eq player1.name
          end

          it "Player 2 should lose" do
            expect(game.loser).to eq player2.name
          end
        end
      end
    end

    context "Player 2 victories" do
      Game::WIN_HASH.each do |move_1, moves|

        move_2 = moves.sample
        before (:each) {
          allow(player1).to receive(:make_move).and_return move_2
          allow(player2).to receive(:make_move).and_return move_1
          game.get_move_p1 move_1
          game.get_move_p2
        }
        context "Player 1 plays #{move_2}, Player 2 plays #{move_1}" do
          it "Player 1 should lose" do
            expect(game.loser).to eq player1.name
          end

          it "Player 2 should win" do
            expect(game.winner).to eq player2.name
          end
        end
      end
    end
  end
end
