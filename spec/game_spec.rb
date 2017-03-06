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
      tie_message = "Nobody, it's a tie!"
      expect(game.play(:rock, :rock)).to eq tie_message
      expect(game.play(:scissors, :scissors)).to eq tie_message
    end

    it 'returns win when p1 wins' do
      win_message = "You, yippee!"
      expect(game.play(:rock, :scissors)).to eq win_message
      expect(game.play(:scissors, :paper)).to eq win_message
    end

    it 'returns lose when computer wins' do
      lose_message = "Machine. Your tiny brain is no match."
      expect(game.play(:scissors, :rock)).to eq lose_message
      expect(game.play(:paper, :scissors)).to eq lose_message
    end
  end
end
