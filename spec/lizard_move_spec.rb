require 'lizard_move'

describe LizardMove do
  it 'lizard returns no result' do
    lizard = double(:lizard, type: :lizard)
    expect(subject.winner_vs(lizard)).to eq nil
  end

  it 'paper returns lizard' do
    paper = double(:paper, type: :paper)
    expect(subject.winner_vs(paper)).to eq subject
  end

  it 'rock returns rock' do
    rock = double(:rock, type: :rock)
    expect(subject.winner_vs(rock)).to eq rock
  end

  it 'scissors returns scissors' do
    scissors = double(:scissors, type: :scissors)
    expect(subject.winner_vs(scissors)).to eq scissors
  end

  it 'spock returns lizard' do
    spock = double(:spock, type: :spock)
    expect(subject.winner_vs(spock)).to eq subject
  end
end
