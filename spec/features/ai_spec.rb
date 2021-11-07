require 'ai'

describe Ai do

  subject(:subject) { described_class.new }

  ai_choice = "paper"

  describe '#random_choice' do
    it 'returns a random choice' do
      expect(["rock","paper","scissors"]).to include(subject.random_choice)
    end
  end

  describe '#declare_winner' do
    it 'recognises a win' do
      expect(subject.declare_winner("rock", ai_choice)).to eq "The computer won!"
    end

    it 'recognises a tie' do
      expect(subject.declare_winner("paper", ai_choice)).to eq "It was a tie!"
    end

  end

end
