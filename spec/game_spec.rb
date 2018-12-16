require "game"

describe Game do

  it "expects game class to be initialised with an array of RPS choices" do
    expect(subject.options).to eq ["Rock", "Paper", "Scissors"]
  end


end
