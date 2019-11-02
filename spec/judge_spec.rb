require 'judge'

describe Judge do
  let(:judge) { Judge.new }

  it 'returns "person" when compare(p: rock, c: scissors) is called' do
    expect(judge.compare(p: 'ROCK', c: 'SCISSORS')).to eq(:pers)
  end

  it 'returns "computer" when compare(p: paper, c: scissors) is called' do
    expect(judge.compare(p: 'PAPER', c: 'SCISSORS')).to eq(:comp)
  end

  it 'returns "neither" when compare(p: rock, p: rock) is called' do
    expect(judge.compare(p: 'ROCK', c: 'ROCK')).to eq(:neither)
  end
end
