require 'game'

describe Game do

	subject(:game) { described_class.new(player) }
	let(:player) { double :player }

  it 'initializes instance of itself' do
    expect(game).to be_instance_of Game
  end

end