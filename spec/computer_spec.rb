require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  context "Computer randomisation" do
    it "generates a random choice of rock, paper or scissors" do
      expect([:Rock, :Paper, :Scissors]).to include(computer.random_rps)
    end

    it "assigns a random choice of rock, paper or scissors to computer choice" do
      computer.random_rps
      expect([:Rock, :Paper, :Scissors]).to include(computer.computer_choice)
    end
  end


end
