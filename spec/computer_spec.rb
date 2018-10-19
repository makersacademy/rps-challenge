require 'computer'

describe Computer do
  it "returns the computer's move" do
    expect(["rock", "paper", "scissors"]).to include(subject.choice)
  end
end
