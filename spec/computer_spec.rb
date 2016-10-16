require 'computer'

describe Computer do
  it "can make a random move" do
    expect([:rock, :paper, :scissors]).to include subject.move
  end
end
