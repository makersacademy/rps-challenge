require 'game'

describe Game do

  it "selects a random weapon" do
    expect(["Rock", "Paper", "Scissors"]).to include(subject.random_weapon)
  end

end
