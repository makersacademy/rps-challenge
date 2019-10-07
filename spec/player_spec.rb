require 'player'

describe Player do

  subject(:kirill) { described_class.new("player_name", "spock") }

  describe "name is a string" do
    it "can return a name" do
      expect(kirill.name).to be_kind_of(String)
    end
  end

  describe "name is a string" do
    it "can return your choice" do
      choices = ["rock", "paper", "scissors", "lizard", "spock"]
      expect(choices).to include(kirill.choice)
    end
  end

end
