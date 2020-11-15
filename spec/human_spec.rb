require 'human'
require 'player'

describe Human do

  it 'knows its name and initial move' do
    savanna = Human.new('savanna')
    expect(savanna.name).to eq 'savanna'
    expect(savanna.move).to eq nil
  end
  it 'Knows its move' do
    savanna = Human.new('savanna', 'rock')
    expect(savanna.move).to eq 'rock'
  end
  it 'updates its move after receiving the method #inputed_move' do
    savanna = Human.new('savanna')
    savanna.inputed_move('paper')
    expect(savanna.move).to eq 'paper'
  end
end
