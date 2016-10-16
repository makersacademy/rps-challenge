require 'computer'

describe Computer do

  it "has a name" do
    expect(subject.name).to eq "Computer"
  end

  it "can make a random move" do
    expect([:rock, :paper, :scissors]).to include subject.move
  end
end
