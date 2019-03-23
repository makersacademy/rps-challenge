require './model/player.rb'

describe Player do
  subject(:yoyo) {Player.new('Yoyo')}

  describe '#name' do
    it "checks for player's name" do
      expect(yoyo.name).to eq "Yoyo"
    end
  end

  it 'checks if the class exists' do
  end

  it {is_expected.to respond_to(:pick).with(1).argument }

  it 'checks if the player can choose from rps' do
    yoyo.pick('paper')
    expect(yoyo.move).to eq ('paper')
  end

end