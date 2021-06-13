require 'computer'

describe Computer do
  context 'name' do
    it 'has a name' do
      expect(subject.name).to eq 'CPU'
    end
  end
  
  context '#move' do
    it { is_expected.to respond_to(:move) }

    it 'can return rock' do
      srand(2)
      expect(subject.move).to eq "rock"
    end

    it 'can return paper' do
      srand(1)
      expect(subject.move).to eq "paper"
    end

    it 'can return scissors' do
      srand(3)
      expect(subject.move).to eq "scissors"
    end
  end

  context '#make_random_move' do
    it 'can make a random move and give rock, paper or scissors' do
      # make sure the moves don't include anything extra?
      10.times do
        expect(subject.make_random_move).to eq("rock").or eq("paper").or eq("scissors")
      end
    end
  end
end
