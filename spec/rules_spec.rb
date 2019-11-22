require 'rules'

describe Rules do

  let(:rock) { 'Rock' }
  let(:paper) { 'Paper' }
  let(:scissors) { 'Scissors' }
  game = Rules.new

  it 'Paper beats rock' do
    expect(game.rps_rules(paper,rock)).to eq 'You are the winner'
  end

  it 'Scissors beats paper' do
    expect(game.rps_rules(scissors,paper)).to eq 'You are the winner'
  end

  it 'Rock beats scissors' do
    expect(game.rps_rules(rock,scissors)).to eq 'You are the winner'
  end

  it 'The resuls are even' do
    expect(game.rps_rules(rock,rock)).to eq 'That is a draw, play again!'
  end

end