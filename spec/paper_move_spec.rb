require 'paper_move'

describe PaperMove do
  it 'lizard returns paper' do
    lizard = double(:lizard, type: :lizard)
    expect(subject.winner_vs(lizard)).to eq lizard
  end

  it 'paper returns no result' do
    paper = double(:paper, type: :paper)
    expect(subject.winner_vs(paper)).to eq nil
  end

  it 'rock returns paper' do
    rock = double(:rock, type: :rock)
    expect(subject.winner_vs(rock)).to eq subject
  end

  it 'scissors returns scissors' do
    scissors = double(:scissors, type: :scissors)
    expect(subject.winner_vs(scissors)).to eq scissors
  end

  it 'spock returns spock' do
    spock = double(:spock, type: :spock)
    expect(subject.winner_vs(spock)).to eq subject
  end
end
