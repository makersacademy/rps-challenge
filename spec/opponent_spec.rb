require 'rock_paper_scissors'
require 'opponent'

describe Opponent do

  it "selects a move" do
    RPS.create('Chris')
    expect(RPS.instance.opponent.move).not_to eq (nil)
  end
end
