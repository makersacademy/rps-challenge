require 'game' 

describe Game do
  subject(:game) { described_class.new(selections) }
  let(:selections) { {:player_name => "Bob", :player_weapon => :rock, :computer_weapon => :scissors} }

  describe "#player_name" do
    it "requires player name" do
      expect(game.player_name).to eq("Bob")
    end
  end

  describe "#player_weapon" do
    it "returns player weapon" do
      expect(game.player_weapon).to eq(:rock)
    end
  end

  describe "#computer_weapon" do
    it "returns computer weapon" do
      expect(game.computer_weapon).to eq(:scissors)
    end
  end

  context "when the game has finished" do

    subject(:player_wins_game) { game }
    subject(:computer_wins_game) { described_class.new(computer_wins_hash) }
    subject(:drawn_game) { described_class.new(drawn_game_hash) }

    let(:computer_wins_hash) { {:player_name => "Bob", :player_weapon => :rock, :computer_weapon => :paper} }
    let(:drawn_game_hash) { {:player_name => "Bob", :player_weapon => :rock, :computer_weapon => :rock} }

    describe "#player wins?" do
      it "return true if player's weapon beats computer's weapon" do
        expect(player_wins_game.player_wins?).to eq(true)
      end
    end
    describe "#computer wins?" do
      it "return true if computer's weapon beats player's weapon" do
        expect(computer_wins_game.computer_wins?).to eq(true)
      end
    end
    describe "#draw?" do
      it "return true if player and computer have the same weapon" do
        expect(drawn_game.draw?).to eq(true)
      end
    end
  end
end