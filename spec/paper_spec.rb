require 'paper'

describe Paper do

  let(:paper){Paper.new}
  let(:player){double :player}

  it 'can be chosen' do
    expect(paper.chosen(player)).to eq true
  end

  it 'can lose against Scissors' do
    paper.play
    expect(paper).
  end





end