require 'scissors_move'

describe ScissorsMove do
  it 'lizard returns scissors' do
    lizard = double(:lizard, type: :lizard)
    expect(subject.vs(lizard)).to eq subject
  end

  it 'paper returns scissors' do
    paper = double(:paper, type: :paper)
    expect(subject.vs(paper)).to eq subject
  end

  it 'rock returns rock' do
    rock = double(:rock, type: :rock)
    expect(subject.vs(rock)).to eq rock
  end

  it 'scissors returns result' do
    scissors = double(:scissors, type: :scissors)
    expect(subject.vs(scissors)).to eq nil
  end

  it 'spock returns spock' do
    spock = double(:spock, type: :spock)
    expect(subject.vs(spock)).to eq spock
  end
end
