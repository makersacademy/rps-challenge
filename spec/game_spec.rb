require 'game'

describe Game do

  let(:player_1) { double :player, hit_points: 100 }
  let(:player_2) { double :player, hit_points: 100  }
  subject(:game) { described_class.new(player_1, player_2) }


  describe 'when passed players' do
    it 'should store them' do
      expect(subject.player_1).to eq(player_1)
    end
  end
end
