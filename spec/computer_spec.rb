require "computer"

describe Computer do

  let(:computer) { described_class.new }

  describe "#move" do
    it "returns a random choice between Rock, Paper or Scissors" do
      allow_any_instance_of(Object).to receive(:rand) { 0 }
      expect(computer.move).to eq "Rock"
    end
  end

end
