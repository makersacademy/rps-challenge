require 'player'

describe Player do

  subject(:player) { described_class.new(name) }
  let(:name) { 'Edward' }
  let(:weapons) { [:scissors, :paper, :rock] }
  let(:weapon) { :rock }
  let(:wrong_weapon) { :gun }
  let(:game) { double :game }

  it {is_expected.to respond_to(:name)}

  it 'expects to print out all the weapons' do
    expect(player.weapons).to eq weapons
  end

  it 'expects to raise an error if the weapon is not present' do
    expect{ player.choose_weapon(wrong_weapon) }.to raise_error 'Cannot choose this weapon: weapon not present'
  end

  it 'expects to output the choosen weapon' do
    expect(player.choose_weapon(weapon)).to eq :rock
  end

  it 'expects to print the choosen weapon' do
    player.choose_weapon(weapon)
    expect(player.choosen).to eq weapon
  end

end
