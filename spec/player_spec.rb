require './lib/player.rb'

describe Player do
  subject(:jon) { Player.new('Jon Snow') }

  describe '#name' do
    it "checks for player's name" do
      expect(jon.name).to eq "Jon Snow"
    end
  end

  it 'checks if the class exists' do
  end

  it { is_expected.to respond_to(:pick).with(1).argument }

  it 'checks if the player can choose from rps' do
    jon.pick('paper')
    expect(jon.move).to eq 'paper'
  end

end
