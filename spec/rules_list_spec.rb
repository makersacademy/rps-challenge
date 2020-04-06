require 'rules_list'

describe RulesList do
  it 'returns the correct rule for Paper/Paper' do
    expect(subject.rule([:paper, :paper])).to eq 'both players chose paper'
  end

  it 'returns the correct rule for Rock/Rock' do
    expect(subject.rule([:rock, :rock])).to eq 'both players chose rock'
  end

  it 'returns the correct rule for Scissors/Scissors' do
    expect(subject.rule([:scissors, :scissors])).to eq 'both players chose scissors'
  end

  it 'returns the correct rule for Paper/Rock' do
    expect(subject.rule([:paper, :rock])).to eq 'paper wraps rock'
  end

  it 'returns the correct rule for Rock/Paper' do
    expect(subject.rule([:rock, :paper])).to eq 'paper wraps rock'
  end

  it 'returns the correct rule for Paper/Scissors' do
    expect(subject.rule([:paper, :scissors])).to eq 'scissors cut paper'
  end

  it 'returns the correct rule for Scissors/Paper' do
    expect(subject.rule([:scissors, :paper])).to eq 'scissors cut paper'
  end

  it 'returns the correct rule for Rock/Scissors' do
    expect(subject.rule([:rock, :scissors])).to eq 'rock blunts scissors'
  end

  it 'returns the correct rule for Scissors/Rock' do
    expect(subject.rule([:scissors, :rock])).to eq 'rock blunts scissors'
  end
end