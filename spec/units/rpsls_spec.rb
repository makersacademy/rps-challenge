require 'rpsls'

describe RockPaperScissorsLizardSpock do
  it 'has a name' do
    expect(subject.name).to eq('Rock Paper Scissors Lizard Spock')
  end
  it 'can return a user move' do
    expect(subject.user_move('Rock')).to eq('Rock')
  end
  it 'can return an AI move' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    expect(subject.ai_move).to eq('Paper')
  end
  context 'winning/losing' do
    context 'when Rock' do
      it 'beats Scissors' do
        expect(subject.results('Rock', 'Scissors')).to eq('You won!')
      end
      it 'beats Lizard' do
        expect(subject.results('Rock', 'Lizard')).to eq('You won!')
      end
    end
    context 'when Paper' do
      it 'beats Rock' do
        expect(subject.results('Paper', 'Rock')).to eq('You won!')
      end
      it 'beats Spock' do
        expect(subject.results('Paper', 'Spock')).to eq('You won!')
      end
    end
    context 'when Scissors' do
      it 'beats Paper' do
        expect(subject.results('Scissors', 'Paper')).to eq('You won!')
      end
      it 'beats Lizard' do
        expect(subject.results('Scissors', 'Lizard')).to eq('You won!')
      end
    end
    context 'when Lizard' do
      it 'beats Spock' do
        expect(subject.results('Lizard', 'Spock')).to eq('You won!')
      end
      it 'beats Paper' do
        expect(subject.results('Lizard', 'Paper')).to eq('You won!')
      end
    end
    context 'when Spock' do
      it 'beats Rock' do
        expect(subject.results('Spock', 'Rock')).to eq('You won!')
      end
      it 'beats Scissors' do
        expect(subject.results('Spock', 'Scissors')).to eq('You won!')
      end
    end
  end
end
