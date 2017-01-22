require "./views/player.rb"

describe Player do

  it "is expected to contain the name of the player" do

    player = Player.new("Saul","Bellow")

    expect(player.first_name).to eq("Saul")
    expect(player.last_name).to eq("Bellow")

  end


end
