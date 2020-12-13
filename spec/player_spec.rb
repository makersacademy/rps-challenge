require 'player'

describe Player do
  let(:name) { "Bob" }
  let(:choice) { "rock" }

  subject { Player.new(name: name, choice: choice) }

  describe "#name" do
    it "registers the player's name" do
      expect(subject.name).to eq(name)
    end
  end

  describe "#choice" do
    it "registers the player's choice" do
      expect(subject.choice).to eq(choice)
    end
  end
end
