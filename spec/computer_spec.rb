require "computer"

describe Computer do
  it "chooses a random weapon" do
    srand(4567)
    expect(subject.weapon).to eq "ROCK"
  end
end
