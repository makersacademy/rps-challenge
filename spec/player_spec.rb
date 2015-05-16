require 'player'

describe Player do
  let(:player) {Player.new('name')}
  it {expect(player).to respond_to :name}
end