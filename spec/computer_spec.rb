require 'computer'

describe Computer do

  subject(:computer) { Computer.new }

  describe "#random figure" do
    it "defines random figure" do
      expect(computer).to respond_to(:computer_choice)
    end

    it "returns random figure" do
      expect(["rock", "paper", "scissors"]).to include(computer.random_choice)
    end
  end

end