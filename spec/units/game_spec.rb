require 'game'
require 'random_weapon'

describe Game do
  let(:chosen_weapon) { 'player1 choice' }
  let(:fight_call) { '#fight called on weapon object' }
  let(:weapon) { double('weapon', :fight => fight_call) }
  let(:weapon_factory) { double('Weapon Factory Mock', :create => weapon) }
  let(:game) { described_class.new(weapon1: chosen_weapon, weapon_factory: weapon_factory) }
  
  it 'commands fight on a weapon object' do
    expect(weapon).to receive(:fight).with(instance_of(String))
    game.result
  end

  it 'returns the results of a fight' do
    expect(game.result).to eq fight_call
  end

  it 'returns the first player weapon' do
    expect(game.weapon1).to eq chosen_weapon
  end

  context 'solo play' do
    let(:random_weapon) { 'random weapon' }
    
    before do
      allow(RandomWeapon).to receive(:choose).and_return(random_weapon)
    end
    
    it 'provides a random opponent weapon' do
      expect(RandomWeapon).to receive(:choose)
      described_class.new(weapon1: chosen_weapon)
    end

    it 'returns the random opponent weapon' do
      expect(game.weapon2).to eq random_weapon
    end

    it 'calls a fight with the random opponent weapon' do
      expect(weapon).to receive(:fight).with(random_weapon)
      game.result
    end
  end

  context 'multiplayer' do
    let(:chosen_weapon2) { 'player2 choice' }
    let(:game) { described_class.new(weapon1: chosen_weapon, weapon2: chosen_weapon2, weapon_factory: weapon_factory) }

    it 'returns the second chosen weapon' do
      expect(game.weapon2).to eq chosen_weapon2
    end

    it 'calls a fight with the second chosen weapon' do
      expect(weapon).to receive(:fight).with(chosen_weapon2)
      game.result
    end
  end
end
