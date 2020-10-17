require 'results_calculator'

describe ResultsCalculator do
  let(:computer) { double :computer, choose: "rock", move: "rock" }
  let(:user) { double :user, move: "rock" }

  describe '#result' do
    subject(:game) { described_class.new(user, computer) }
    it 'calculates the game result' do
      expect(subject.result).to eq("It's a Draw")
    end
  end

  describe '#user_move' do
    subject(:game) { described_class.new(user, computer) }
    it "returns the users move" do
      expect(subject.user_move).to eq("rock")      
    end
  end
end
