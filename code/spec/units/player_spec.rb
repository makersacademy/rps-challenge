require 'player'

describe 'Player' do

  let (:player) {Player.new}
  it "receives a name from the login form" do
    player.name = "Rob"
    expect(player.name).to eq "Rob"
  end

end
  