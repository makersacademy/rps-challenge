require 'spock_move'

describe SpockMove do
  it 'lizard returns lizard' do
    lizard = double(:lizard, type: :lizard)
    expect(subject.vs(lizard)).to eq lizard
  end

  it 'paper returns paper' do
    paper = double(:paper, type: :paper)
    expect(subject.vs(paper)).to eq paper
  end

  it 'rock returns spock' do
    rock = double(:rock, type: :rock)
    expect(subject.vs(rock)).to eq subject
  end

  it 'scissors returns spock' do
    scissors = double(:scissors, type: :scissors)
    expect(subject.vs(scissors)).to eq subject
  end

  it 'spock returns no result' do
    spock = double(:spock, type: :spock)
    expect(subject.vs(spock)).to eq nil
  end
end
