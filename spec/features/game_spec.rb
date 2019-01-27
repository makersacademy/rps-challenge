require 'game'

describe Game do
  it 'calculates winner' do
    allow(Computer).to receive(:go).and_return("Scissors")
    @p1_name = "Player"
    @p1_move = "Rock"
    expect(Game.result(@p1_name, @p1_move)).to eq("#{@p1_name} wins!")
  end

  it 'calculates loser' do
    allow(Computer).to receive(:go).and_return("Paper")
    @p1_name = "Player"
    @p1_move = "Rock"
    expect(Game.result(@p1_name, @p1_move)).to eq("#{@p1_name} loses!")
  end

  it 'calculates draw' do
    allow(Computer).to receive(:go).and_return("Rock")
    @p1_name = "Player"
    @p1_move = "Rock"
    expect(Game.result(@p1_name, @p1_move)).to eq("Draw!")
  end
end
