require 'game'

describe Game do
  it "responds to #player" do
    expect(subject).to respond_to :player
  end

  it "responds to #computer " do
    expect(subject).to respond_to :computer
  end
end
