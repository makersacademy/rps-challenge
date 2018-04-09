require 'player'

describe 'Player' do

  let (:player) {Player.new}
  it "receives a name from the login form" do
    player.name = "Rob"
    expect(player.name).to eq "Rob"
  end

  it "the player chooses rock, paper or scissors" do
    player.choice = "rock"
    expect(player.choice).to eq "rock"
  end

end
  