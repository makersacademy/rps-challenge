require 'rock_move'

describe RockMove do
  it 'lizard returns rock' do
    lizard = double(:lizard, type: :lizard)
    expect(subject.vs(lizard)).to eq subject
  end

  it 'paper returns paper' do
    paper = double(:paper, type: :paper)
    expect(subject.vs(paper)).to eq paper
  end

  it 'rock returns no result' do
    rock = double(:rock, type: :rock)
    expect(subject.vs(rock)).to eq nil
  end

  it 'scissors returns rock' do
    scissors = double(:scissors, type: :scissors)
    expect(subject.vs(scissors)).to eq subject
  end

  it 'spock returns spock' do
    spock = double(:spock, type: :spock)
    expect(subject.vs(spock)).to eq spock
  end
end
