require 'game'

describe Game do
  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}
  subject(:game) {described_class.new(player_1, player_2)}

  it 'has a constant with weapon options' do
    expect(described_class::WEAPON).to eq [:rock, :paper, :scissors]
  end

  it 'returns player 1' do
    expect(game.player_1).to eq player_1
  end

  it 'returns player 2' do
    expect(game.player_2).to eq player_2
  end

  describe '#play' do

    it 'returns tie when both weapons are the same' do
      expect(game.play(:rock, :rock)).to eq "Nobody, it's a tie!"
      expect(game.play(:scissors, :scissors)).to eq "Nobody, it's a tie!"
    end

    it 'returns win when p1 wins' do
      expect(game.play(:rock, :scissors)).to eq "You, woo!"
      expect(game.play(:scissors, :paper)).to eq "You, woo!"
    end

    it 'returns lose when computer wins' do
      expect(game.play(:scissors, :rock)).to eq "Machine. Your tiny brain is no match."
      expect(game.play(:paper, :scissors)).to eq "Machine. Your tiny brain is no match."
    end
  end
end
