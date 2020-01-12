require 'game'

describe Move do
  describe '#computer_weapon' do
    it 'randomly chooses an option' do
      srand(4)
      expect(subject.computer_weapon).to eq "Scissors"
    end
  end

  describe '#beats' do
    it 'describes the move that win as key/value pairs' do
      expect(subject.beats("Rock")).to eq "Scissors"
    end
  end

  describe '#calculate_result' do
    it 'calculates a win' do
      expect(subject.calculate_result("Paper", "Rock")).to eq "You win"
    end

    it 'calculates a loss' do
      expect(subject.calculate_result("Paper", "Scissors")).to eq "You lost"
    end
    
    it 'calculates a tie' do
      expect(subject.calculate_result("Paper", "Paper")).to eq "You tied"
    end
  end

end
