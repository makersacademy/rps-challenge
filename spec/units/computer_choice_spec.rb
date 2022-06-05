require 'computer_choice'

RSpec.describe ComputerChoice do
  context "give computer's choice for the game" do
    it "returns Rock as a string" do
      allow_any_instance_of(ComputerChoice).to receive(:get_choice).and_return("Rock")

      expect(ComputerChoice.new.get_choice).to eq "Rock"
    end

    it "returns Paper as a string" do
      allow_any_instance_of(ComputerChoice).to receive(:get_choice).and_return("Paper")

      expect(ComputerChoice.new.get_choice).to eq "Paper"
    end

    it "returns Scissors as a string" do
      allow_any_instance_of(ComputerChoice).to receive(:get_choice).and_return("Scissors")

      expect(ComputerChoice.new.get_choice).to eq "Scissors"
    end
  end
end

