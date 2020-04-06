require 'rock_move'

describe RockMove do
  it 'paper returns paper' do
    paper = double(:paper, type: :paper)
    expect(subject.winner_vs(paper)).to eq paper
  end

  it 'rock returns no result' do
    rock = double(:rock, type: :rock)
    expect(subject.winner_vs(rock)).to eq nil
  end

  it 'scissors returns rock' do
    scissors = double(:scissors, type: :scissors)
    expect(subject.winner_vs(scissors)).to eq subject
  end
end