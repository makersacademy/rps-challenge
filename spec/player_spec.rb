require './lib/player.rb'

describe Player do

  it "should be able to have a name if one is provided" do
    player = Player.new("Ian")
    expect(player.playername).to eq "Ian"
  end

end
