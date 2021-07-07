require 'player'

describe Player do
  subject { described_class.new("Symion", "Scissors") }

  describe '#initialize' do
    it 'Instances of the Player class are initialzed with a name' do
      expect(subject.name).to eq("Symion")
    end
    it 'Instances of the Player class are initialzed with a move' do
      expect(subject.move).to eq("Scissors")
    end
  end

  describe '#move_sample' do 
    it 'Returns Rock, Paper or Scissors' do
      srand(4)
      expect(subject.move_sample).to eq("Scissors")
    end
  end
end
