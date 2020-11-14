require 'game'

describe Game do
  subject {described_class.new("Symion", "Scissors")}

  describe '#initialize' do 
    it 'Instances of the game class are initialzed with the user name' do
      expect(subject.name).to eq("Symion")
    end
    it 'Instances of the game class are initialized with the user move' do
      expect(subject.user_move).to eq("Scissors")
    end
  end

  describe '#move_sample' do 
    it 'Returns Rock, Paper or Scissors' do
      srand(4)
      expect(subject.move_sample).to eq("Scissors")
    end
  end

  describe '#round' do 
    it 'Returns "The computer won!" when computer wins' do
      allow(subject).to receive(:move_sample) {"Rock"}
      expect(subject.round).to eq("You lost!")
    end
    it 'Returns "It\'s a draw!" when draw' do
      allow(subject).to receive(:move_sample) {"Scissors"}
      expect(subject.round).to eq("It's a draw!")
    end
    it 'Returns "You won!" when user wins' do
      allow(subject).to receive(:move_sample) {"Paper"}
      expect(subject.round).to eq("You won!")
    end
  end


end