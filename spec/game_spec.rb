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
  it 'Returns "Computer" when computer wins' do
    allow(subject).to receive(:move_sample) {"Rock"}
    expect(subject.round).to eq("Computer")
  end
  it 'Returns "Draw" when draw' do
    allow(subject).to receive(:move_sample) {"Scissors"}
    expect(subject.round).to eq("Draw")
  end
  it 'Returns "Symion" when user wins' do
    allow(subject).to receive(:move_sample) {"Paper"}
    expect(subject.round).to eq("Symion")
  end
end


end