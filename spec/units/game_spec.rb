require 'game'
require 'random_weapon'

describe Game do
  let(:chosen_weapon) { 'Rock' }
  let(:fight_call) { '#fight called on weapon object' }
  let(:weapon) { double('weapon', :fight => fight_call) }
  let(:weapon_factory) { double('Weapon Factory Mock', :create => weapon) }
  let(:game) { described_class.new(weapon1: chosen_weapon, weapon_factory: weapon_factory) }
  
  it 'provides a random opponent weapon' do
    expect(RandomWeapon).to receive(:choose)
    described_class.new(weapon1: chosen_weapon)
  end

  it 'commands fight on a weapon object' do
    expect(weapon).to receive(:fight).with(instance_of(String))
    game.result
  end

  it 'returns the results of a fight' do
    expect(game.result).to eq fight_call
  end
end
