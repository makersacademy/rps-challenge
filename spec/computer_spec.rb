require 'computer'
require 'game'

describe Computer do
subject(:computer) { described_class.new }

  # describe '#weapon_select' do
  #   it 'randomly picks a weapon from WEAPONS array' do
  #     allow(computer.weapon_select).to receive{Game::WEAPONS.sample}.and_return(:paper)
  #     expect(subject.weapon).to eq(:paper)
  #   end
  # end

end
