require 'game'

describe Game do
  it "chooses the computer's weapon at random" do
    p1 = Game.new("Pete")
    allow(p1).to receive(:computer_weapon).and_return "rock"
  end

end
