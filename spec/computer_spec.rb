require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  context "Computer randomisation" do
    it "generates a random choice of rock, paper or scissors" do
      expect([:Rock, :Paper, :Scissors]).to include(computer.random_rps)
    end

  end


end
