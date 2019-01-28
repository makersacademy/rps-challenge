require "./models/player"

RSpec.describe Player do
  it 'allows player to make a choice' do
    player=Player.new(:rock)
    expect(player.weapon).to eq(:rock)
  end
end
