require "player"

describe Player do
  subject(:player){described_class.new(choice: "rock", opponent: computer_class)}
  let(:computer_class) {double :computer_class, new: computer}
  let(:computer) {double :computer}

  context "draw" do
    it "returns a draw if same choice" do
      allow(computer).to receive(:choice) { "rock" }
      expect(player.match).to eq("It's a draw")
    end
  end
  context "player loses" do
    it "returns a loss if correct conditions" do
      allow(computer).to receive(:choice) { "paper" }
      expect(player.match).to eq("You lose!")
    end
  end
  context "player wins" do
    it "returns a win if correct conditions" do
      allow(computer).to receive(:choice) { "scissors" }
      expect(player.match).to eq("You win!")
    end
  end
end