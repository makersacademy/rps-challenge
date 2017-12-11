describe Player do
  subject(:player1) { described_class.new("George") }

  describe "#name" do
    it "should return the players name" do
      expect(player1.name).to eq "George"
    end
  end
end
