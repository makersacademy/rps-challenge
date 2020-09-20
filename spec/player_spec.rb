require 'player'
describe Player do 
  player = Player.new("Ollie")
  it "has a name" do
    expect(player).to respond_to(:name)
  end

  it "has a win count" do 
    expect(player).to respond_to(:wins)
  end

  it "has a loss count" do
    expect(player).to respond_to(:losses)
  end

  it "has a draw count" do
    expect(player).to respond_to(:draws)
  end
end