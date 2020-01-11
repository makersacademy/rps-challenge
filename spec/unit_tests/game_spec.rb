require 'game'

describe Game do
  describe '#computer_choice' do
    it 'returns either Rock Paper or Scissors' do
      subject = described_class.new("John")
      expect(subject.computer_choice).to eq("Rock").or eq("Paper").or eq("Scissors")
    end
  end
  describe '#determine_result' do
    it 'If you enter Rock and computer enters Scissors it returns You win!' do
      subject = described_class.new("John")
      expect(subject.determine_result("Rock","Scissors")).to eq("You win!")
    end
    it 'If you enter Rock and computer enters Paper it returns You lose!' do
      subject = described_class.new("John")
      expect(subject.determine_result("Rock","Paper")).to eq("You lose!")
    end
    it 'If you enter Paper and computer enters Rock it returns You win!' do
      subject = described_class.new("John")
      expect(subject.determine_result("Paper","Rock")).to eq("You win!")
    end
    it 'If you enter Paper and computer enters Scissors it returns You lose!' do
      subject = described_class.new("John")
      expect(subject.determine_result("Paper","Scissors")).to eq("You lose!")
    end
    it 'If you enter Scissors and computer enters Rock it returns You lose!' do
      subject = described_class.new("John")
      expect(subject.determine_result("Scissors","Rock")).to eq("You lose!")
    end
    it 'If you enter Scissors and computer enters Paper it returns You win!' do
      subject = described_class.new("John")
      expect(subject.determine_result("Scissors","Paper")).to eq("You win!")
    end
    it 'If you and the computer enter the same choice it returns You draw!'do
      subject = described_class.new("John")
      expect(subject.determine_result("Rock","Rock")).to eq("You draw!")
    end
  end
end