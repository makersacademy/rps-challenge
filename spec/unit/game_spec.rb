require 'game'

describe Game do
  subject { described_class.new }
  
  it 'can show results when it was drawn' do
    expect(subject.result('Paper', 'Paper')).to eq 'Draw!'
    expect(subject.result('Rock', 'Rock')).to eq 'Draw!'
    expect(subject.result('Rock', 'Rock')).to eq 'Draw!'
  end

  it 'can show results when you won' do 
    expect(subject.result('Paper', 'Rock')).to eq 'You won!'
    expect(subject.result('Rock', 'Scissors')).to eq 'You won!'
    expect(subject.result('Scissors', 'Paper')).to eq 'You won!'
  end

  it 'can show results when you lost' do 
    expect(subject.result('Paper', 'Scissors')).to eq 'You lost!'
    expect(subject.result('Rock', 'Paper')).to eq 'You lost!'
    expect(subject.result('Scissors', 'Rock')).to eq 'You lost!'
  end
end
