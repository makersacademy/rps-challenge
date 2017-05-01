require 'game'

describe Game do

  it "selects a random weapon" do
    expect(subject.random_weapon).to be_in(["Rock", "Paper", "Scissors"])
  end

end
