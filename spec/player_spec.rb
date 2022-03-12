require 'player'

describe Player do
  describe ".take_name" do
    it "stores the name of the palyer" do
      Player.take_name("Tinda")
    end

  end

  describe ".name" do
    it "returns the name of the palyer" do
      expect(Player.name).to eq "Tinda"
    end

  end

end
