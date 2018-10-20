require 'game'

describe Game do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  subject { described_class.new(player_1: player_1) }

  it "should return the player_1" do
    expect(subject.player_1).to eq player_1
  end

  it "should return the player_2" do
    subject = Game.new(player_1: player_1, player_2: player_2)
    expect(subject.player_2).to eq player_2
  end

  describe "#self.create" do
    it "should return a Game" do
      expect(Game.create(player_1: player_1)).to be_a Game
    end
  end

  describe "self.instance" do
    it "should return the created Game" do
      game = Game.create(player_1: player_1)
      expect(Game.instance).to eq game
    end
  end

  describe "#choose_move" do
    it "should chose random move out of Rock, Paper and Scissors" do
      subject.choose_move
      expect(subject.possible_moves).to include subject.chosen_move
    end
  end
end
