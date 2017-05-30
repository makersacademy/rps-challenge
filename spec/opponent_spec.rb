require 'opponent'

describe Opponent do
  subject(:opponent) {described_class.new}

  it "Returns rock from it's weapon choices" do
    expect(opponent.make_weapon_choice(0)).to eq "rock"
  end
  it "Returns paper from it's weapon choices" do
    expect(opponent.make_weapon_choice(1)).to eq "paper"
  end
  it "Returns scissors from it's weapon choices" do
    expect(opponent.make_weapon_choice(2)).to eq "scissors"
  end
end
