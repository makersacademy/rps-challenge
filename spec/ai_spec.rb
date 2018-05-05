require 'ai'

describe Ai do
  it 'responds to decision' do
    expect(subject).to respond_to(:decision)
  end

  describe '#random_number' do
    it 'returns 1' do
      srand(2)
      expect(subject.random_number).to eq 1
    end
    it 'returns 2' do
      srand(1)
      expect(subject.random_number).to eq 2
    end

    it 'returns 3' do
      srand(4)
      expect(subject.random_number).to eq 3
    end
  end

  describe '#rock_hash' do
    it 'has rock paper scissors' do
      expect(subject.rock_hash).to eq({1 => "rock", 2 => "paper", 3 => "scissors"})
    end
  end

  describe '#play_turn' do
    it 'returns rock as its decision' do
      srand(2)
      subject.play_turn
      expect(subject.decision).to eq "rock"
    end

    it 'returns paper as its decision' do
      srand(1)
      subject.play_turn
      expect(subject.decision).to eq "paper"
    end

    it 'returns scissors as its decision' do
      srand(4)
      subject.play_turn
      expect(subject.decision).to eq "scissors"
    end
  end
end
