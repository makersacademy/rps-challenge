require 'player'

describe Player do

  subject(:player) { described_class.new(name) }
  let(:name) { "Ryan" }

  it 'should initialize with a name' do
    expect(player.name).to eq name
  end

  it 'should be able to choose a weapon' do
    player.choose_weapon("rock")
    expect(player.weapon).to eq "rock"
  end

end
