require 'player'

describe Player do
  let(:player) {Player.new("John")}
  it 'initialize name to player class' do
    expect(player.name).to eq("John")
  end

end
