require './docs/player.rb'

describe Player do

let(:player) { Player.new("Andy") }

  describe "#initialize" do
    it "a new player should be initialized with a name" do
      expect(player.name).to eq("Andy")
    end

    it "a new player should start with a nil value for move" do
      expect(player.move).to eq(nil)
    end
  end

  describe "#choose_move" do
    it "should change the move to rock, paper or scissors" do
      player.choose_move("rock")
      player.choose_move("scissors")
      expect(player.move).to eq("scissors")
    end
  end
end
