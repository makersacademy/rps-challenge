require 'weapon'

describe Weapon do

  subject(:weapon) { described_class.new }
  let(:wrong_weapon) { :gun }
  let(:choosen_weapon) { :rock }

  it 'expects to raise an error if the weapon is not present' do
    expect{ weapon.choose_weapon(wrong_weapon) }.to raise_error 'Cannot choose this weapon: weapon not present'
  end

  it 'expects to print the choosen weapon' do
    expect(weapon.choose_weapon(choosen_weapon)).to eq choosen_weapon
  end
end
