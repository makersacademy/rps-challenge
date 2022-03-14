require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe ".instance" do
    it "returns an instance of Computer" do
      expect(described_class.instance).to be_an_instance_of(Computer)
    end
  end
  describe "#initialize" do
    it "sets the name to 'Computer'" do
      expect(computer.name).to eq("Computer")
    end
  end
  describe "#generate_move" do
    it "returns a move" do
      expect(computer.generate_move).to eq("Rock").or eq("Paper").or eq("Scissors")
    end
  end
  describe "#reset" do
    it "resets the score to 0" do
      computer.increment_score
      expect { computer.reset }.to change { computer.score }.by(-1)
    end
  end
end
