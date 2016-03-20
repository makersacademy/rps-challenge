require 'player'

describe Player do
  subject(:player)  { described_class.new('Murilo', :rock) }

  it 'starts with a name' do
    expect(player.name).to eq 'Murilo'
  end

  it 'takes a weapon' do
    expect(player.weapon).to eq :rock
  end

  it '#add_player' do
    expect(Player).to receive(:add_player).with('Murilo', :rock)
    Player.add_player('Murilo', :rock)
  end

  it 'has a current_player' do
    player = Player.add_player('Murilo', :rock)
    expect(Player.current_player).to be_instance_of Player
  end
end
