require 'player'

describe Player do

  subject(:player_one) { described_class.new("Matthew")}

  describe '#initialize' do

    it 'should create a player with a name' do
      expect(player_one.show_name).to eq "Matthew"
    end

    it 'should create players with an initial score of 0' do
      expect(player_one.show_points).to eq 0
    end
  end


end
