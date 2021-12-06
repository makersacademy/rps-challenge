require 'computer'

describe Computer do
  subject { described_class.new }
  describe "#choice" do
    it "computer respond to choice" do
      expect(subject).to respond_to(:choice)
    end

    it "computer choice is randomly chosen from array" do
      choices = ["rock", "paper", "scissors"]
      expect(choices).to include(subject.choice)
    end
  end
end
