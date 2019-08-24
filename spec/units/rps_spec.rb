require 'rps'

describe RockPaperScissors do
  it 'has a name' do
    expect(subject.name).to eq('Rock Paper Scissors')
  end
  it 'can return a user move' do
    expect(subject.user_move('Rock')).to eq('Rock')
  end
  it 'can return an AI move' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    expect(subject.ai_move).to eq('Paper')
  end
  context 'winning/losing' do
    it 'Rock beats Scissors' do
      expect(subject.results('Rock', 'Scissors')).to eq('You won!')
    end
    it 'Scissors beats Paper' do
      expect(subject.results('Scissors', 'Paper')).to eq('You won!')
    end
    it 'Paper beats Rock' do
      expect(subject.results('Paper', 'Rock')).to eq('You won!')
    end
  end
end
