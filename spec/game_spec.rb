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
      allow(subject).to receive(:computer_draw).and_return :scissors
      expect(game.play(:paper)).to eq "Computer wins"
    end

    it 'scissors vs rock - rock wins' do
      allow(subject).to receive(:computer_draw).and_return :rock
      expect(game.play(:scissors)).to eq "Computer wins"
    end

    it 'paper vs rock - paper wins' do
      allow(subject).to receive(:computer_draw).and_return :rock
      expect(game.play(:paper)).to eq "Player 1 wins"
    end

    it 'paper vs paper - draw' do
      allow(subject).to receive(:computer_draw).and_return :paper
      expect(game.play(:paper)).to eq "Draw!"
    end
  end
end
