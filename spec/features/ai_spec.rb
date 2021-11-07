require 'ai'

describe Ai do

  describe '#random_choice' do
    it 'returns a random choice' do
      expect(["rock","paper","scissors"]).to include(subject.random_choice)
    end
  end

  describe '#declare_winner' do
    it 'recognises a win' do
      ai = Ai.new
      ai_choice = "paper"
      player_choice = "rock"
      expect(ai.declare_winner).to eq "The computer won!"
    end

    it 'recognises a tie' do
      ai = Ai.new
      ai_choice = "paper"
      player_choice = "paper"
      expect(ai.declare_winner).to eq "It was a tie!"
    end

  end

end