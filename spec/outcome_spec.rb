require './lib/outcome.rb'

RSpec.describe Outcome do
  describe '#evaluate' do
    it 'evaluates outcome based on players choice' do
      expect(subject.evaluate("Rock", "Scissors")).to eq "YOU WIN"
    end

    it 'evaluates outcome based on players choice' do
      expect(subject.evaluate("Rock", "Rock")).to eq "IT'S A DRAW"
    end

    it 'evaluates outcome based on players choice' do
      expect(subject.evaluate("Rock", "Paper")).to eq "YOU LOSE"
    end

    it 'evaluates outcome based on players choice' do
      expect(subject.evaluate("Scissors", "Paper")).to eq "YOU WIN"
    end

    it 'evaluates outcome based on players choice' do
      expect(subject.evaluate("Paper", "Rock")).to eq "YOU WIN"
    end
  end
end
