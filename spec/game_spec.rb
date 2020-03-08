require 'game'

describe Game do

  subject(:game) { described_class.new(player_1) }
  let(:player_1) { double :player_1 }
  let(:p1_move) { double :p1_move }
  let(:p2_move) { double :p2_move }

  describe "#player_1" do
    it "returns player 1" do
      expect(game.player_1).to eq player_1
    end
  end

  it "should store the player's move" do
    expect(game.player_1_selection(p1_move)).to eq p1_move
  end

  it "should increase the computer's counter by 1 if the computer wins" do
    allow(p1_move).to receive "rock"
    allow(p2_move).to receive "paper"
    game.result(p1_move, p2_move)
    expect(game.p2_counter).to eq 1
  end

  it "should not increase either score if there is a draw" do
    allow(p1_move).to receive "paper"
    allow(p2_move).to receive "paper"
    game.result(p1_move, p2_move)
    expect(game.p2_counter && game.p1_counter).to eq 0
  end

end
