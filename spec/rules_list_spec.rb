require 'rules_list'

describe RulesList do
  it 'returns the correct rule for Paper/Paper' do
    expect(subject.rule(['Paper', 'Paper'])).to eq 'both players chose paper'
  end

  it 'returns the correct rule for Rock/Rock' do
    expect(subject.rule(['Rock', 'Rock'])).to eq 'both players chose rock'
  end

  it 'returns the correct rule for Scissors/Scissors' do
    expect(subject.rule(['Scissors', 'Scissors'])).to eq 'both players chose scissors'
  end

  it 'returns the correct rule for Paper/Rock' do
    expect(subject.rule(['Paper', 'Rock'])).to eq 'paper wraps rock'
  end

  it 'returns the correct rule for Rock/Paper' do
    expect(subject.rule(['Rock', 'Paper'])).to eq 'paper wraps rock'
  end

  it 'returns the correct rule for Paper/Scissors' do
    expect(subject.rule(['Paper', 'Scissors'])).to eq 'scissors cut paper'
  end

  it 'returns the correct rule for Scissors/Paper' do
    expect(subject.rule(['Scissors', 'Paper'])).to eq 'scissors cut paper'
  end

  it 'returns the correct rule for Rock/Scissors' do
    expect(subject.rule(['Rock', 'Scissors'])).to eq 'rock blunts scissors'
  end

  it 'returns the correct rule for Scissors/Rock' do
    expect(subject.rule(['Scissors', 'Rock'])).to eq 'rock blunts scissors'
  end
end