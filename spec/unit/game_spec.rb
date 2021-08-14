require 'game'

describe Game do

  let(:new_player) { double }
  let(:opponent) { double }
  let(:subject) { described_class.new(new_player, opponent) }

  describe "#initialize" do
    it 'creates a player' do
      expect(subject).to respond_to(:player)
    end
  end

  describe '#outcome' do
  
    it 'is a draw if both weapons the same' do
      allow(new_player).to receive(:weapon) { "Rock" }
      allow(opponent).to receive(:weapon) { "Rock" }
      expect(subject.outcome).to eq("It's a draw!")
    end

    it 'is a loss if player is rock & computer is paper' do
      allow(new_player).to receive(:weapon) { "Rock" }
      allow(opponent).to receive(:weapon) { "Paper" }
      expect(subject.outcome).to eq("You lose!")
    end

    it 'is a loss if player is paper & computer is scissors' do
      allow(new_player).to receive(:weapon) { "Paper" }
      allow(opponent).to receive(:weapon) { "Scissors" }
      expect(subject.outcome).to eq("You lose!")
    end

    it 'is a loss if player is scissors & computer is rock' do
      allow(new_player).to receive(:weapon) { "Scissors" }
      allow(opponent).to receive(:weapon) { "Rock" }
      expect(subject.outcome).to eq("You lose!")
    end

    it 'any other outcome is a win' do
      allow(new_player).to receive(:weapon) { "Scissors" }
      allow(opponent).to receive(:weapon) { "Paper" }
      expect(subject.outcome).to eq("You win!")
    end

  end

end
