require 'player'

describe Player do

  let(:player_1) { described_class.new("Player 1")}

  it 'Should have a name attribute' do
    expect(player_1.name).to eq "Player 1"
  end

end
