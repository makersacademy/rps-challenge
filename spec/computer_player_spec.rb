require 'computer_player'

RSpec.describe ComputerPlayer do
  subject { described_class.new(name: "Hal") }

  describe "#choice" do
    it "returns a random choice" do
      choices = ["rock", "paper", "scissors"]
      expect(subject.choice).to satisfy { |choice| choices.include?(choice) }
    end
  end
end
