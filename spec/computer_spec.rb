require 'computer'

describe Computer do

  pc = Computer.new

  describe '#random_move' do
    it 'returns a random choice with rock' do
      allow(pc).to receive(:random_move).and_return("rock")
    end

    it "chooses at random" do
      expect(["rock", "paper", "scissors"]). to include(pc.random_move)
    end
  end

end
