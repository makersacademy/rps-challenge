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

  it 'should keep track of wins' do
    player.win
    expect(player.win_count).to eq 1
  end

  it 'should keep track of losses' do
    player.lose
    expect(player.lose_count).to eq 1
  end

  it 'should keep track of draws' do
    player.draw
    expect(player.draw_count).to eq 1
  end

end
