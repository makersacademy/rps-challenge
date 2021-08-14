require 'player'

describe Player do 
  context 'new' do
    it 'has a name' do
      expect(subject.name).to_not be_nil
    end
  end

  context 'playing' do
    it 'can choose rock, paper or scissors' do
      subject.choose("Rock")
      expect(subject.choice).to eq "Rock"
    end
  end

  context 'Computer player' do
    it 'can randomly choose rock' do
      srand(2)
      subject.choose_random
      expect(subject.choice).to eq "Rock"
    end
  
    it 'can randomly choose paper' do
      srand(1)
      subject.choose_random
      expect(subject.choice).to eq "Paper"
    end
  
    it 'can randomly choose scissors' do
      srand(3)
      subject.choose_random
      expect(subject.choice).to eq "Scissors"
    end
  end
end
