require 'player'

describe Player do

  subject(:player_one) { described_class.new("Matthew")}

  describe '#show_name' do

    it 'should create a player with a name' do
      expect(player_one.show_name).to eq "Matthew"
    end
  end

  describe '#show_points' do

    it 'should create players with an initial score of 0' do
      expect(player_one.show_points).to eq 0
    end
  end

  describe '#store_move' do

    it "should store the player's last chosen move" do
      player_one.store_move(:rock)
      expect(player_one.show_last_move).to eq :rock
    end
  end

  describe '#add_win' do
    it "should update the player's points by 1" do
      expect{player_one.add_win}.to change{player_one.show_points}.by 1
    end
  end

end
