require 'game'

describe Game do

  it 'must take two players choice as an argument' do
    expect(subject). to respond_to(:game).with(2).argument
  end



end
