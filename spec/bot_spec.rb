require "bot"

describe Bot do 
  let(:computer) { Bot.new("Computer") }

  it { expect(computer).to respond_to(:name) }

  it { expect(computer).to respond_to(:choice) }

  describe "#round_choice" do 
    it "return random coice" do 
      allow(computer).to receive(:random_move).and_return("Rock")
      computer.round_choice
      expect(computer.choice).to eq "Rock"
    end
  end
end
