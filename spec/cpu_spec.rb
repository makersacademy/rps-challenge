require './lib/cpu'

describe CPU do 
  
  it 'should initialize with a move' do 
    srand(2)
    game = CPU.new
    expect(game.move).to eq "rock" 
  end

end