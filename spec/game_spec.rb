require 'game'

describe Game do 

  context 'Player one should be declared the winner of the game' do 

    it 'should show P1 rock beating scissors' do 
      expect(subject.result("Rock", "Scissors")).to eq "Rock beats Scissors, you win!"
    end
  
    it 'should show P1 paper beating rock' do 
      expect(subject.result("Paper", "Rock")).to eq "Paper beats Rock, you win!"
    end

    it 'should show P1 scissors beating paper' do 
      expect(subject.result("Scissors", "Paper")).to eq "Scissors beats Paper, you win!"
    end

  end

  context 'Computer should be declared the winner of the game' do 

    it 'should show P1 rock losing to paper' do 
      expect(subject.result("Rock", "Paper")).to eq "Paper beats Rock, you lose!"
    end 

    it 'should show P1 paper losing to scissors' do 
      expect(subject.result("Paper", "Scissors")).to eq "Scissors beats Paper, you lose!"
    end

    it 'should show P1 scissors losing to Rock' do
      expect(subject.result("Scissors", "Rock")).to eq "Rock beats Scissors, you lose!"
    end
  end

  context 'Player and Computer draws the same hand' do 

    it 'should show a draw as both hands paper' do 
      expect(subject.result("Paper", "Paper")).to eq "Draw!"
    end

    it 'should show a draw as both hands rock' do 
      expect(subject.result("Rock", "Rock")).to eq "Draw!"
    end

    it 'should show a draw as both hands scissors' do 
      expect(subject.result("Scissors", "Scissors")).to eq "Draw!"
    end
  end

end 
