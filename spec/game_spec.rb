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
    draw = subject.result_check('Rock', 'Rock')
    expect(draw).to eq('/draw')
  end
  it 'returns win' do
    draw = subject.result_check('Rock', 'Scissors')
    expect(draw).to eq('/win')
  end
  it 'returns lose' do
    draw = subject.result_check('Rock', 'Paper')
    expect(draw).to eq('/lose')
  end
end
