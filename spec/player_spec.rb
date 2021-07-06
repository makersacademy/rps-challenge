require 'player'

describe Player do
  let(:player) { described_class.new("Jordan") }
  let(:game) { double :Game::WEAPONS }

  it 'returns player name' do
    expect(player.name).to eq "Jordan"
  end

end
