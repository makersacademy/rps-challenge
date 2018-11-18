require 'player'

describe Player do
  it "can creare a person and store a name" do
    player = Player.create("Ajay")
    expect(player.name).to eq "Ajay"
  end

  it "can use #self.instance to access it's name" do
    player = Player.create("Ajay")
    expect(Player.instance).to be_instance_of(Player)
  end

end
