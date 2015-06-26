require './lib/player'
describe Player do

  it 'intialized with not winning' do
    expect(subject.won?).to eq false
  end

  it 'can win' do
    subject.wins
    expect(subject.won?).to eq true
  end

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

    it 'fails when wrong argument provided' do
      expect{subject.choose('hello')}.to raise_error 'Pick Rock Paper or Scissors'
    end
  end

end
