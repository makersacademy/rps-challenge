require 'paper'
require 'scissors'
require 'stone'

describe Stone do

  it 'should declare a draw when playing stone against stone' do
    stone1 = Stone.new
    stone2 = Stone.new
    expect(stone1.versus(stone2)).to eq :draw
  end
end