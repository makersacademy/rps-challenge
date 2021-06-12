require 'computer'

describe Computer do
  context 'name' do
    it "has a name" do
      expect(subject.name).to eq "CPU"
    end
  end

  context '#move' do
    it { is_expected.to respond_to(:move) }

    it 'can randomly return rock' do
      srand(2)
      expect(subject.move).to eq "rock"
    end

    it 'can randomly return paper' do
      srand(1)
      expect(subject.move).to eq "paper"
    end

    it 'can randomly return scissors' do
      srand(3)
      expect(subject.move).to eq "scissors"
    end
  end

end
