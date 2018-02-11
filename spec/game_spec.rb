require 'game'

describe Game do

  subject(:new_game) { described_class.new('Hunor') }
  let(:player) { game.player }
  let(:computer) { game.computer }

  it 'initializes with Player instance' do
    expect(new_game.player).to be_an_instance_of Player
  end

  it 'initializes with Player instance named Computer' do
    expect(new_game.computer.name).to eq 'Computer'
  end

  it 'initialized with Player instance named Hunor' do
    expect(new_game.player.name).to eq 'Hunor'
  end

end
