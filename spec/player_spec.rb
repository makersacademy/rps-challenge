require './lib/player'
describe Player do

  describe 'Can choose' do

    let(:choice) {double :Choices, rock: :Rock, paper: :Paper, scissors: :Scissors}

    it 'Paper' do
      expect(subject.choose(choice.rock)).to eq :Rock
    end
    it 'Rock' do
      expect(subject.choose(choice.paper)).to eq :Paper
    end
    it 'Scissors' do
      expect(subject.choose(choice.scissors)).to eq :Scissors
    end
  end

end
