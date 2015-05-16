require 'paper'
require 'stone'
require 'scissors'

describe Paper do

  it { is_expected.to respond_to :versus }

  it 'should declare a draw when playing paper against paper' do
    paper1 = Paper.new
    paper2 = Paper.new
    expect(paper1.versus(paper2)).to eq :draw
  end

  it 'should declare a win when paper plays vs stone' do
    paper = Paper.new
    stone = Stone.new
    expect(paper.versus(stone)).to eq :win
  end

  it 'should declare a loss when paper plays vs scissors' do
    paper = Paper.new
    scissors = Scissors.new
    expect(paper.versus(scissors)).to eq :loss
  end

end