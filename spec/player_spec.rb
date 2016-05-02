require 'player'

describe Player do
  subject(:player) {described_class.new 'Johnson'}

  it 'has a name' do
    expect(player.name).to eq 'Johnson'
  end

  it 'initially no gesture' do
    expect(player.gesture).to be_nil
  end

  it 'starts with 0 score' do
    expect(player.score).to eq 0
  end

  describe "#choose" do
    it 'stores gesture as a symbol' do
      player.choose 'rock'
      expect(player.gesture).to eq :rock
    end
  end

  describe "#add_point" do
    it 'increases score by one' do
      expect{player.add_point}.to change{player.score}.by 1
    end
  end


end
