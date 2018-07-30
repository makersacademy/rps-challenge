require 'winner'

describe Outcome do
  describe '#winner' do
    it 'responds to winning' do
      result = Outcome.new("Rock", "Scissors").winner
      expect(result).to eq "You are the winner!"
    end

    it 'responds to drawing' do
      result = Outcome.new("Paper", "Paper").winner
      expect(result).to eq "It's a draw"
    end

    it 'responds to losing' do
      result = Outcome.new("Paper", "Scissors").winner
      expect(result).to eq "You have been defeated"
    end
  end
end
