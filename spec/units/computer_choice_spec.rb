require 'computer_choice'

RSpec.describe ComputerChoice do
  context "give computer's choice for the game" do
    it "returns Rock as a string" do
      allow_any_instance_of(ComputerChoice).to receive(:random_index).and_return(0)

      expect(ComputerChoice.new.get_choice).to eq "Rock"
    end

    it "returns Paper as a string" do
      allow_any_instance_of(ComputerChoice).to receive(:random_index).and_return(1)

      expect(ComputerChoice.new.get_choice).to eq "Paper"
    end

    it "returns Scissors as a string" do
      allow_any_instance_of(ComputerChoice).to receive(:random_index).and_return(2)

      expect(ComputerChoice.new.get_choice).to eq "Scissors"
    end
  end
end

