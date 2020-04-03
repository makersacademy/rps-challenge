require 'player'

describe Player do
  it " should be able to store player's name" do
    expect { Player.new("Ed") }.to_not raise_error
  end
  it " should be able to remember the player's name" do
    player = Player.new("Ed")
    expect(player.name).to eq("Ed")
  end
  it " should be able to store the player's choice" do
    expect { player.store('rock') }.to_not raise_error
  end
end
