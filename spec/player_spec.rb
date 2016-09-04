require './lib/player'

describe Player do

subject(:player) {described_class.new}


  it 'can use the move scissor' do
    expect(player.scissor).to eq 2
  end

  it 'can use the move rock' do
    expect(player.rock).to eq 0
  end


  it 'can use the move paper' do
    expect(player.paper).to eq 1
  end

  it 'can use of the moves at random' do
    a = 0||1||2
    expect(player.random).to eq(a)
  end



end
