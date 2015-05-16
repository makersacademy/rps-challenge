require 'paper'
require 'scissors'
require 'stone'

describe Scissors do

  it 'should declare a draw when playing scissors against scissors' do
    scissors1 = Scissors.new
    scissors2 = Scissors.new
    expect(scissors1.versus(scissors2)).to eq :draw
  end

  it 'should declare a win when playing against paper' do
    scissors = Scissors.new
    paper = Paper.new
    expect(scissors.versus(paper)).to eq :win
  end
end