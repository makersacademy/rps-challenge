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

  it 'starts with 0 score' do
    expect(player.score).to eq 0
  end

  describe "#choose_weapon" do
    it 'stores weapon as a symbol' do
      player.choose_weapon 'rock'
      expect(player.weapon).to eq :rock
    end
  end

  describe "#add_point" do
    it 'increases score by one' do
      expect{player.add_point}.to change{player.score}.by 1
    end
  end


end
