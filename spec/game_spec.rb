require 'game'

describe 'Game' do 
  let(:game){Game.new}
  let(:player){double :player, :selection=>:scissors}

  it 'can choose a selection for itself' do 
    allow(game).to receive(:selection).and_return(:rock)
    expect(game.selection).to eq(:rock)
  end  

  it 'can compare its selection against a players selection' do 
    allow(game).to receive(:selection).and_return(:rock)
    expect(game.selections_equal?(player)).to eq(false)
  end  

  it 'knows when its selection has beaten the players selection' do 
    allow(game).to receive(:selection).and_return(:rock)
    expect(game.check_selections(player)).to eq(game)
  end   

  it 'knows when its selection has been beaten' do
    allow(game).to receive(:selection).and_return(:paper)
    expect(game.check_selections(player)).to eq(player)
  end  

end  