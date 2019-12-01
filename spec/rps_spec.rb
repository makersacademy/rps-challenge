require 'rps'

describe RPS do
  describe "#outcome" do
    context "if other player(s) choose scissors" do
      it "returns win if user chooses rock" do
        rps = RPS.new("rock", "scissors")
        expect(rps.outcome).to eq("win")
      end
    end

    context "if other player(s) choose paper" do
      it "returns lose if user chooses rock" do
        rps = RPS.new("rock", "paper")
        expect(rps.outcome).to eq("lose")
      end
    end

    context "if other player(s) choose rock" do
      it "returns draw if user chooses rock" do
        rps = RPS.new("rock", "rock")
        expect(rps.outcome).to eq("draw")
      end
    end
  end
end