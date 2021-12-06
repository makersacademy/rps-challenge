require 'game'

describe Game do
  describe '#outcome' do
    it 'determines the winner' do
      expect(subject).to respond_to(:outcome).with(2).arguments
    end
  end 
  context 'when the player wins' do
    it 'if player choses rock' do
      expect(subject.outcome("rock", "scissors")).to eq("You have won!")
    end
  
    it 'if player choses paper' do
      expect(subject.outcome("paper", "rock")).to eq("You have won!")
    end
  
    it 'if player choses scissors' do
      expect(subject.outcome("scissors", "paper")).to eq("You have won!")
    end
  end

  context 'when player and computer choice are the same' do
    it 'both choices is paper' do
      expect(subject.outcome("paper", "paper")).to eq("This round is a draw!")
    end
  
    it 'both choices is rock' do
      expect(subject.outcome("rock", "rock")).to eq("This round is a draw!")
    end
  
    it 'both choices is scissors' do
      expect(subject.outcome("scissors", "scissors")).to eq("This round is a draw!")
    end
  end

  context 'when computer wins' do
  end
  it 'if computer choses scissors' do
    expect(subject.outcome("paper", "scissors")).to eq("Computer has won!")
  end

  it 'if computer choses paper' do
    expect(subject.outcome("rock", "paper")).to eq("Computer has won!")
  end

  it 'if computer choses rock' do
    expect(subject.outcome("scissors", "rock")).to eq("Computer has won!")
  end
end
