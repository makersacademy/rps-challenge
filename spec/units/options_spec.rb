require 'options'

describe Options do
  let(:option) { described_class.new }

  context 'draws'
  it 'expects to get a draw for 2 rocks' do
    expect(option.winner('Rock', 'Rock')).to eq option.result
  end

  context 'not draws'
  it 'Rock beats Scissors' do
    expect(option.winner('Rock', 'Scissors')).to eq option.result
  end

  it 'Paper beats Rock' do
    expect(option.winner('Rock', 'Paper')).to eq option.result
  end

  it 'Scissors beats Paper' do
    expect(option.winner('Paper', 'Scissors')).to eq option.result
  end
end
