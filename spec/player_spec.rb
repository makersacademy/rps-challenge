describe Player do
  subject(:player) {described_class.new("Herbert")}
  
  describe "#initialize" do
    it "initializes a new player with a name" do
      expect(player.name).to eq "Herbert"
    end
  end
  
end