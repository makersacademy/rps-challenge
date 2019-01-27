require 'game'

describe Game do
  xit 'calculates winner' do
    @p1_move = "Rock"
    @cp_move = "Paper"
    # expect(Computer.go).to be_in(["Rock", "Paper", "Scissors"])
    expect(Game.judge(@p1_move, @cp_move)).to eq(@p1_move)
  end
end
