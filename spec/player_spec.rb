require 'player'

describe Player do
  subject(:player_1){described_class.new("Maggie")}

  it 'returns name of player_1' do
    expect(player_1.name).to eq "Maggie"
  end

  it 'player can choose weapon' do
    player_1.choose_weapon(:rock)
    expect(player_1.weapon_choice).to eq :rock
  end

  it 'should raise error if weapon is invalid' do
    expect{player_1.choose_weapon(:kirk)}.to raise_error 'Not a valid weapon'
  end
end
