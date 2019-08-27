require 'move'

describe Move do
  let(:version) { double(:version) }
  let(:player) { double(:player) }
  it 'can call the move method of player' do
    expect(player).to receive(:move)
    Move.run(player, version)
  end
end
