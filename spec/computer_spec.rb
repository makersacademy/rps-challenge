require 'computer'

describe Computer do
  subject(:robot) {described_class.new("Matrix")}

  context "#initialize" do
    it "initializes with player name" do
      expect(robot).to respond_to(:name)
    end
  end

  context "computer_move" do
    it "returns a move" do
      expect(robot.computer_move). to eq "rock"
    end
  end

end
