require 'result'

describe Result do
  let(:player_1) { double(:player, name: "Harrison") }
  let(:player_2) { double(:player, name: "Computer") }
  subject(:result) { Result.new(player_1, player_2) }

  describe "#message" do

    it "should declare a draw" do
      allow(player_1).to receive(:choice).and_return("rock")
      allow(player_2).to receive(:choice).and_return("rock")
      expect(result.message).to eq "Draw"
    end

    it "should declare player 1 as the winner" do
      allow(player_1).to receive(:choice).and_return("rock")
      allow(player_2).to receive(:choice).and_return("scissors")
      expect(result.message).to eq "Harrison wins!"
    end

    it "should declare player 2 as the winner" do
      allow(player_1).to receive(:choice).and_return("rock")
      allow(player_2).to receive(:choice).and_return("paper")
      expect(result.message).to eq "Computer wins!"
    end

  end

end
