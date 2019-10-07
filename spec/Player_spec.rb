require 'Player'

describe Player do

  it 'can be given a name' do
    name = "Stuart"
    player = Player.new(name)
    expect(player.name).to eq name
  end

  it 'can be given a type' do
    type = :cpu
    player = Player.new("x", type)
    expect(player.type).to eq type
  end

  it "is given a random computer name if it's a CPU player" do
    name = "Stuart"
    player = Player.new(name, :cpu)
    expect(player.name).to_not eq name
  end

  it "can make a given move" do
    player = Player.new("x", :human)
    move = :rock
    player.make_move(move)
    expect(player.move).to eq move
  end

  it "makes a random move if it is a CPU player" do
    player = Player.new("x", :cpu)
    move = :fake
    player.make_move(move)
    expect(player.move).to_not eq move
  end

  it "can increase its score" do
    player = Player.new("Stuart", :human)
    player.increase_score
    expect(player.score).to eq 1
  end

end
