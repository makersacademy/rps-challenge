require 'game'

describe Game do
  let(:computer) {double :computer, choice: "rock" }

  describe '#result' do
    subject(:game) { described_class.new("rock", computer) }
    it 'calculates the game result' do
      expect(subject.result).to eq("It's a Draw")
    end
  end

  describe '#user_move' do
    subject(:game) { described_class.new("rock", computer) }
    it "returns the users move" do
      expect(subject.user_move).to eq("rock")      
    end
  end
end