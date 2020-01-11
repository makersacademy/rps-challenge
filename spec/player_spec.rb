require 'player'

describe Player do
  subject{Player.new("Asia")}

  describe "#initialization" do
    it "returns the name of the player" do 
      expect(subject.name).to eq "Asia"
    end
  end
end