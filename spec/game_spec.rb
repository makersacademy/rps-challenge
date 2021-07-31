require 'game'

describe Game do
  it 'returns rock, paper, or scissors' do
    expect(subject.rps_sample).to eq('Rock').or(eq('Paper')).or(eq('Scissors'))
  end
  it 'returns rock' do
    allow(subject).to receive(:rps_sample).and_return('Rock')
    expect(subject.rps_sample).to eq('Rock')
  end
  it 'returns draw' do
    subject.choice_handler('Rock', 'Rock')
    expect(subject.result_check).to eq('/draw')
  end
  it 'returns win' do
    subject.choice_handler('Rock', 'Scissors')
    expect(subject.result_check).to eq('/win')
  end
  it 'returns lose' do
    subject.choice_handler('Rock', 'Paper')
    expect(subject.result_check).to eq('/lose')
  end
end
