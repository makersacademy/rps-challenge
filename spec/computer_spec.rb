require 'computer'

describe Computer do
subject(:computer) { described_class.new("Connie") }

  describe "initialize" do
    it "initialized with choice instance variable set to default choice" do
      expect(computer.choice).to eq Computer::DEFAULT_CHOICE
    end
  end

  describe "#choose_rock" do
    it "changes instance variable choice to rock" do
      computer.choose_rock
        expect(computer.choice).to eq "rock"
    end
  end

  describe "#choose_paper" do
    it "changes instance variable choice to paper" do
      computer.choose_paper
        expect(computer.choice).to eq "paper"
    end
  end

  describe "#choose_scissors" do
    it "changes instance variable choice to scissors" do
      computer.choose_scissors
        expect(computer.choice).to eq "scissors"
    end
  end

  describe "#random_number" do
    it "returns a random number" do
      allow(computer).to receive(:random_number) {30}
        expect(computer.random_number).to eq 30
    end
  end

  describe "#computer_choice" do
    it "checks random number between 1-34 returns method choose_rock" do
      allow(computer).to receive(:random_number) {30}
        expect(computer).to receive(:choose_rock)
          computer.computer_choice
    end

    it "checks random number between 34-67 returns method choose_paper" do
      allow(computer).to receive(:random_number) {50}
        expect(computer).to receive(:choose_paper)
        computer.computer_choice
    end

    it "checks random number between 68 - 100 returns method choose_scissors" do
      allow(computer).to receive(:random_number) {80}
        expect(computer).to receive(:choose_scissors)
          computer.computer_choice
    end
  end
end
