require 'game'

describe Game do
  it "creates a game class" do
    expect(subject).to be_kind_of Game
  end

  it "has a player weapon and comp_weapon value" do
    expect(subject.instance_variable_get(:@weapon)).to eql("rock")
  end
end
