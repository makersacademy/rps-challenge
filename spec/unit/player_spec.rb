require 'player'

describe Player do
  let(:player1) { Player.new('Matt') }
  let(:player2) { Player.new('AI') }

  it 'returns the players name' do
    expect(player1.name).to eq 'Matt'
  end
end
