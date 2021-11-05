describe Player do
  
  before :each do
    srand(4)
  end

  let(:subject) { described_class.new("Dennis") }

  describe '#chosen_hand' do
    it 'can return the choice given to it' do
      subject.chosen_hand("Rock")
      expect(subject.choice).to eq "Rock"
    end
  end
  describe '#choose_random' do
    it 'can return a random element from array of options' do
      expect(subject.choose_random).to eq "Scissors"
    end
  end
end
