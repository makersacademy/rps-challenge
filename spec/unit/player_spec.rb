require './model/player.rb'

describe Player do
  it 'checks if the class exists' do
  end

  it {is_expected.to respond_to(:pick).with(1).argument }

  it 'checks if the player can choose from rps' do
    player = Player.new
    player.pick('paper')
    expect(player.move).to eq ('paper')
  end
end