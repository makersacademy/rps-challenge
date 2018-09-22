require 'game'

describe Game do

  let(:player1) { double :Player, move: :rock }
  let(:ai_player) { double :AI, move: :scissors }
  let(:referee) { double :RPSReferee, decision: 0 }
  subject(:game) { described_class.new(player1, ai_player, referee) }

  context "#initialize" do
    it "should store players in an Array" do
      expect(game.players).to eq [player1, ai_player]
    end
  end

  context "#store_move" do
    it "calls Player#store_move" do
      expect(player1).to receive(:store_move)
      game.store_move("Rock")
    end
  end
end

describe Game do

  let(:player1) { double :Player, move: :rock }
  let(:ai_player) { double :AI, move: :scissors }
  let(:referee) { double :RPSReferee, decision: 0 }
  subject(:game) { described_class.new(player1, ai_player, referee) }

  context "#who_won" do
    it "RPSReferee#decision receives symbol arguments" do
      expect(referee).to receive(:decision).with(an_instance_of(Array))
      game.who_won
    end

    it "calculates who won" do
      expect(game.who_won).to eq player1
    end

    it "calculates who won(Draw)" do
      allow(referee).to receive(:decision).and_return(:Draw)
      expect(game.who_won).to eq :Draw
    end
  end
end
