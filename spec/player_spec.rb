require "player"

describe Player do

  let(:player_a) { Player.new(name: "A", shape: "scissors") }
  let(:player_b) { Player.new(name: "B", shape: "rock") }

  it "#name - whatever it was initialized as" do
    expect(player_a.name).to eq "A"
    expect(player_b.name).to eq "B"
  end

  it "#shape - whatever it was initialized as" do
    expect(player_a.shape).to eq "scissors"
    expect(player_b.shape).to eq "rock"
  end

end
