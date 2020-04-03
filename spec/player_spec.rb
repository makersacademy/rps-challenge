require 'player'

describe Player do
  it " should be able to store player's name" do
    expect { Player.new("Ed") }.to_not raise_error
  end
end
