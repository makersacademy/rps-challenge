require 'player'

describe Player do
  it "uses a class method to make the name accessible across the program" do
    Player.set("George")
    expect(Player.name).to eq("George")
  end
end
