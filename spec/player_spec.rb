require 'player'

describe Player do
  subject(:player) {described_class.new 'Johnson'}

  it 'has a name' do
    expect(player.name).to eq 'Johnson'
  end
  it 'default name is "Nameless one"' do
    player = described_class.new
    expect(player.name).to eq 'Nameless one'
  end

  it 'initially no weapon' do
    expect(player.weapon).to be_nil
  end

  describe "#add_weapon" do
    it 'stores weapon as a symbol' do
      player.add_weapon 'rock'
      expect(player.weapon).to eq :rock
    end
  end
end
