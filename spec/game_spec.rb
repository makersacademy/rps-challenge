require 'game'

describe Game do

  let (:player) { double :player }
  let (:computer) { double :computer }
  subject(:game) { described_class.new(player) }

  describe "#initialize" do
    it 'initializes player' do
      expect(game.player).to eq player
    end
  end

  describe "#make_move" do
    it 'stores player move' do
      game.make_move("rock")
      expect(game.player_move).to eq :rock
    end
  end

  describe "#winner" do
    context "when computer chooses the winning move" do
      it "should return computer" do
        allow_any_instance_of(Computer).to receive(:choose_move).and_return(:paper)
        game.make_move(:rock)
        game.make_computer_move
        expect(game.winner).to eq :computer
      end
    end
    context "when player chooses the winning move" do
      it "should return player" do
        allow_any_instance_of(Computer).to receive(:choose_move).and_return(:paper)
        game.make_move(:scissors)
        game.make_computer_move
        expect(game.winner).to eq :player
      end
    end
    context "when both choose the same move" do
      it "should return draw" do
        allow_any_instance_of(Computer).to receive(:choose_move).and_return(:paper)
        game.make_move(:paper)
        game.make_computer_move
        expect(game.winner).to eq :draw
      end
    end
  end
end

