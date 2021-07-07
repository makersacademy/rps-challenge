require 'game'

describe Game do

  subject { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#player_1' do

    it 'should return player 1' do
      expect(subject.player_1).to eq player_1
    end

  end

  describe '#player_2' do

    it 'should return player 2' do
      expect(subject.player_2).to eq player_2
    end

  end

end
