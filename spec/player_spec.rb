require 'player'

describe Player do
	let(:player) { described_class.new("foobar")}
  it 'initializes with a name' do
  	expect(player.name).to eq("foobar")
  end

end 