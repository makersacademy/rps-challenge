require 'player'

describe Player do
  it 'receives choice' do
  player = Player.new(:Rock)
  expect(player.choice).to eq(:Rock)
  end
end
