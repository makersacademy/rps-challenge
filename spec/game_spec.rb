require 'game'

describe Game do
  it 'can return the winning choice' do
    expect(subject.result_rps(:paper, :rock)).to eq(:win)
  end

  it 'can return a draw' do
    expect(subject.result_rps(:paper, :paper)).to eq(:draw)
  end

  it 'can return the losing choice' do
    expect(subject.result_rps(:rock, :paper)).to eq(:lose)
  end

  it 'can return a draw for RPSLS' do
    expect(subject.result_rpsls(:spock, :spock)).to eq(:draw)
  end

  it 'can return a losing choice for RPSLS' do
    expect(subject.result_rpsls(:scissors, :spock)).to eq(:lose)
  end

  it 'can return a winning choice for RPSLS' do
    expect(subject.result_rpsls(:spock, :scissors)).to eq(:win)
  end
end