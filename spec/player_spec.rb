require 'player'

describe Player do
  let(:player) { described_class.new("player") }
  let(:computer) { double :computer_class }

  it 'creates a computer player if only 1 player' do
    expect(computer).to receive(:move)
    player.computer_player
  end
end
