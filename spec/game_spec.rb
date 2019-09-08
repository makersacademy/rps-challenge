require 'game'

describe Game do

  describe 'confirms a winner' do
    it 'when Paper and Rock' do
      subject = Game.new("Paper", "Rock")
      expect(subject.winner).to eq "You win!"
    end

    it 'when Rock and Scissor' do
      subject = Game.new("Rock", "Scissor")
      expect(subject.winner).to eq "You win!"
    end

    it 'when Scissor and Paper' do
      subject = Game.new("Scissor", "Paper")
      expect(subject.winner).to eq "You win!"
    end
  end

  describe 'confirms a draw' do
    it 'when Rock and Rock' do
      subject = Game.new("Rock", "Rock")
      expect(subject.winner).to eq "It's a draw!"
    end

    it 'when Paper and Paper' do
      subject = Game.new("Paper", "Paper")
      expect(subject.winner).to eq "It's a draw!"
    end

    it 'When Scissor and Scissor' do
      subject = Game.new("Scissor", "Scissor")
      expect(subject.winner).to eq "It's a draw!"
    end
  end

  describe 'confirms a lose' do
    it 'When Rock and Paper' do
      subject = Game.new("Rock", "Paper")
      expect(subject.winner).to eq "You lose!"
    end

    it 'when Scissor and Rock' do
      subject = Game.new("Scissor", "Rock")
      expect(subject.winner).to eq "You lose!"
    end

    it 'when Paper and Scissor' do
      subject = Game.new("Rock", "Paper")
      expect(subject.winner).to eq "You lose!"
    end
  end
end
