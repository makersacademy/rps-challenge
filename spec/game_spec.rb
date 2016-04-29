require 'game'

describe Game do
  subject(:game) {described_class.new(player_1)}
  let(:player_1) {double :player}

  describe '#player 1' do
    it 'retrieves first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#play' do
    it 'paper vs scissors - scissors wins' do
      expect(game.play(:paper,:scissors)).to eq :scissors
    end

    it 'scissors vs rock - rock wins' do
      expect(game.play(:scissors,:rock)).to eq :rock
    end

    it 'paper vs rock - paper wins' do
      expect(game.play(:paper,:rock)).to eq :paper
    end

    it 'paper vs paper - draw' do
      expect(game.play(:paper,:paper)).to eq :draw
    end
  end
end
