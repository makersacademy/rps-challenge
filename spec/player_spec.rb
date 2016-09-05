require 'player'

describe Player do

  subject(:jon) {Player.new("jon")}

  context "#name" do
    it "returns players provided name" do
      expect(jon.name).to eq("jon")
    end
  end
end
