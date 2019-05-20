require './models/player.rb'

describe Player do

  subject(:player_1) { Player.new('James') }

  it "initializes with a name" do
    expect(player_1.name).to eq 'James'
  end

  describe '#move' do

    it 'returns the move' do
      expect(player_1.move("Rock")).to eq "Rock"
    end

end

end