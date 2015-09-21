require 'player'

describe Player do

  it "returns name if wins" do
    player = Player.new('John')
    player.win
    expect(player.score).to eq 1
  end

  it "adds score if wins" do
    player = Player.new('John')
    expect(player.win).to eq 'John'
  end


end