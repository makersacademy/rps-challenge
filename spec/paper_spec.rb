require 'paper'

describe Paper do

  let(:paper){Paper.new}
  let(:scissors){class Scissors; Scissors.new; end}
  let(:rock){class Rock; Rock.new; end}

  it 'beats rock' do
    expect(paper.beats?(rock)).to be true
  end

  it 'loses to scissors' do
    expect(paper.beats?(scissors)).not_to be true
  end

end
