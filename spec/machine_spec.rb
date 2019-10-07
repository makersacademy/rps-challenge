require 'machine'

describe Machine do
  describe "#random_rps" do
    it "choose paper" do
      machine = Machine.new
      allow(machine).to receive(:random_rps).and_return "PAPER"
      expect(machine.random_rps).to eq "PAPER"
    end
  end
end
