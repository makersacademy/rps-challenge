require "computer"

describe Computer do

  it "#name - should be 'computer'" do
    expect(subject.name).to eq "computer"
  end

  it "#shape - should be 'rock', 'paper' or 'scissors'" do
    expect(subject.shape)
      .to eq("rock")
      .or eq("paper")
      .or eq("scissors")
  end

end
