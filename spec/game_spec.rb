require 'game'

describe Game do 

  context 'human wins' do 

    it 'human wins if human chooses rock and comp chooses scissors' do
      human = (double :human, choice: :rock)
      computer = (double :computer, choice: :scissors)
      expect(subject.human_winner?(human, computer)).to eq(true)
    end

    it 'human wins if human chooses paper and comp chooses rock' do
      human = (double :human, choice: :paper)
      computer = (double :computer, choice: :rock)
      expect(subject.human_winner?(human, computer)).to eq(true)
    end

    it 'human wins if human chooses scissors and comp chooses paper' do
      human = (double :human, choice: :scissors)
      computer = (double :computer, choice: :paper)
      expect(subject.human_winner?(human, computer)).to eq(true)
    end

  end

  context 'human loses' do

    it 'human loses if human chooses rock and comp chooses paper' do 
      human = (double :human, choice: :rock)
      computer = (double :computer, choice: :paper)
      expect(subject.human_loser?(human, computer)).to eq(true)
    end

    it 'human loses if human chooses scissors and comp chooses rock' do 
      human = (double :human, choice: :scissors)
      computer = (double :computer, choice: :rock)
      expect(subject.human_loser?(human, computer)).to eq(true)
    end

    it 'human loses if human chooses paper and comp chooses scissors' do 
      human = (double :human, choice: :paper)
      computer = (double :computer, choice: :scissors)
      expect(subject.human_loser?(human, computer)).to eq(true)
    end

  end

  context 'draw' do 

    it 'is a draw if human and comp choose rock' do 
      human = (double :human, choice: :rock)
      computer = (double :computer, choice: :rock)
      expect(subject.draw?(human, computer)).to eq(true)
    end

    it 'is a draw if human and comp choose paper' do 
      human = (double :human, choice: :paper)
      computer = (double :computer, choice: :paper)
      expect(subject.draw?(human, computer)).to eq(true)
    end

    it 'is a draw if human and comp choose scissors' do 
      human = (double :human, choice: :scissors)
      computer = (double :computer, choice: :scissors)
      expect(subject.draw?(human, computer)).to eq(true)
    end

  end

end

