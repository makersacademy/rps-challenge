require 'moves'

describe Moves do
  it 'contains the right moves' do
    expect(subject.list).to eq [:rock, :paper, :scissors]
  end

  it 'can return rock when random_move is called' do
    allow(subject.list).to receive(:sample) { :rock }
    expect(subject.random_move).to eq :rock
  end

  it 'can return paper when random_move is called' do
    allow(subject.list).to receive(:sample) { :paper }
    expect(subject.random_move).to eq :paper
  end

  it 'can return scissors when random_move is called' do
    allow(subject.list).to receive(:sample) { :scissors }
    expect(subject.random_move).to eq :scissors
  end
end
