require "./lib/game.rb"

describe Game do
  context "can compare players responses:" do

    it 'Rock - Paper: Player2 wins' do
      expect(subject.compare("Rock", "Paper")).to eq "Player 2 wins"
    end

    it 'Rock - Rock: Draw' do
      expect(subject.compare("Rock", "Rock")).to eq "It's a draw"
    end

    it 'Rock - Scissors: Player1 wins' do
      expect(subject.compare("Rock", "Scissors")).to eq "Player 1 wins"
    end

    it 'Paper - Paper: Draw' do
      expect(subject.compare("Paper", "Paper")).to eq "It's a draw"
    end

    it 'Paper - Rock: Player1 wins' do
      expect(subject.compare("Paper", "Rock")).to eq "Player 1 wins"
    end

    it 'Paper - Scissors: Player2 wins' do
      expect(subject.compare("Paper", "Scissors")).to eq "Player 2 wins"
    end

    it 'Scissors - Paper: Player1 wins' do
      expect(subject.compare("Scissors", "Paper")).to eq "Player 1 wins"
    end

    it 'Scissors - Rock: Player2 wins' do
      expect(subject.compare("Scissors", "Rock")).to eq "Player 2 wins"
    end

    it 'Scissors - Scissors: Draw' do
      expect(subject.compare("Scissors", "Scissors")).to eq "It's a draw"
    end

  end
end
