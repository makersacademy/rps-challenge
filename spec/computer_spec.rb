require 'computer'

describe Computer do
  it "returns a random rock paper scissors option" do
    expect(subject.play)
    .to eq("rock")
    .or eq("paper")
    .or eq("scissors")
  end
end