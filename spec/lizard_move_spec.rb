require 'lizard_move'

describe LizardMove do
  it 'lizard returns no result' do
    lizard = double(:lizard, type: :lizard)
    expect(subject.vs(lizard)).to eq nil
  end

  it 'paper returns lizard' do
    paper = double(:paper, type: :paper)
    expect(subject.vs(paper)).to eq subject
  end

  it 'rock returns rock' do
    rock = double(:rock, type: :rock)
    expect(subject.vs(rock)).to eq rock
  end

  it 'scissors returns scissors' do
    scissors = double(:scissors, type: :scissors)
    expect(subject.vs(scissors)).to eq scissors
  end

  it 'spock returns lizard' do
    spock = double(:spock, type: :spock)
    expect(subject.vs(spock)).to eq subject
  end
end
