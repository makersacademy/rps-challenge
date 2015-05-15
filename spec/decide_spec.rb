require 'decide'

describe Decide do
  let(:decide) { described_class.new }

  context 'RPS' do

    it 'knows P1 Rock beats P2 Scissors' do
      expect(decide.make "Rock", "Scissors").to eq "win"
    end

    it 'knows P1 Paper beats P2 Rock' do
      expect(decide.make "Paper", "Rock").to eq "win"
    end

    it 'knows P1 Scissors beats P2 Paper' do
      expect(decide.make "Scissors", "Paper").to eq "win"
    end

    it 'knows P1 Rock loses to P2 Paper' do
      expect(decide.make "Rock", "Paper").to eq "lose"
    end

    it 'knows P1 Paper loses to P2 Scissors' do
      expect(decide.make "Paper", "Scissors").to eq "lose"
    end

    it 'knows P1 Scissors loses to P2 Rock' do
      expect(decide.make "Scissors", "Rock").to eq "lose"
    end

    it 'knows P1 Rock ties with P2 Rock' do
      expect(decide.make "Rock", "Rock").to eq "tie"
    end

    it 'knows P1 Paper ties with P2 Paper' do
      expect(decide.make "Paper", "Paper").to eq "tie"
    end

    it 'knows P1 Scissors ties with P2 Scissors' do
      expect(decide.make "Scissors", "Scissors").to eq "tie"
    end
  end

  context 'RPSLS' do

    it 'knows P1 Lizard beats P2 Spock' do
      expect(decide.make "Lizard", "Spock").to eq "win"
    end

    it 'knows P1 Lizard beats P2 Paper' do
      expect(decide.make "Lizard", "Paper").to eq "win"
    end

    # etc etc etc
  end
end
