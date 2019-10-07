require './lib/player'

describe 'Player' do
  let(:player) {Player.new("Jackie Chan")}

  it "can see name" do
    expect(player.name).to eql("Jackie Chan")
  end

end
