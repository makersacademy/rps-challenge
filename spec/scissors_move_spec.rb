require 'scissors_move'

describe ScissorsMove do
  it 'paper returns scissors' do
    paper = double(:paper, type: :paper)
    expect(subject.winner_vs(paper)).to eq subject
  end

  it 'rock returns rock' do
    rock = double(:rock, type: :rock)
    expect(subject.winner_vs(rock)).to eq rock
  end

  it 'scissors returns no result' do
    scissors = double(:scissors, type: :scissors)
    expect(subject.winner_vs(scissors)).to eq nil
  end
end