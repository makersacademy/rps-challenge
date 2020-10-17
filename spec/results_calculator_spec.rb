require 'results_calculator'

describe ResultsCalculator do
  let(:computer) { double :computer, choose: "rock", move: "Rock" }
  let(:user_2) { double :user, move: "Paper"}
  let(:user) { double :user, move: "Rock" }

  describe '#result' do
    subject(:game) { described_class.new(user, computer) }
    it 'calculates the game result' do
      expect(subject.result).to eq("It's a Draw")
    end
  end

  describe '#user_move' do
    subject(:game) { described_class.new(user, computer) }
    it "returns the users move" do
      expect(subject.player_1_move).to eq("Rock")      
    end
  end

end
