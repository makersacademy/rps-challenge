require 'player'

describe Player do

  subject(:simon) { described_class.new("simon", "rock") }

  describe "name given is a string" do
    it "it will return a name in the form of a string" do
      expect(simon.name).to be_kind_of(String)
    end

    it "it returns a given name" do
      expect(simon.name).to eq "simon"
    end
  end

  describe "it reads a weapon choice" do
    it "can return your weapon of choice" do
      options = ["rock", "paper", "scissors"]
      expect(options).to include(simon.options)
    end
  end
end
