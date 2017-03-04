require 'rock_paper_scissors'
require 'opponent'

describe Opponent do

  it "evaluates player move and selects appropriate move back" do
    player = Player.create('Chris')
    RPS.create(player)
    RPS.instance.rock
    opponent = Opponent.create_opponent
    Opponent.instance.move
    expect(Opponent.instance.move).not_to eq (nil)
  end
end
