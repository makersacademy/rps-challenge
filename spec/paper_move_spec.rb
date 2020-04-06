require 'paper_move'

describe PaperMove do
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
end