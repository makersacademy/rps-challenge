require 'game'

describe Game do
  let(:game) {described_class.new(player_1,player_2)}
  let(:player_1) {double :player}
  let(:player_2) {double :player}

  it 'retrieves the first player' do
    expect(game.player_1).to eq player_1
  end

  it 'retrieves the second player' do
    expect(game.player_2).to eq player_2
  end

  describe '#weapons' do
    it 'holds the weapons used by both players' do
      game.outcome('rock', 'paper')
      expect(game.chosen_weapons).to eq ['rock', 'paper']
    end
  end

  describe '#outome' do
    it 'sets paper as the winner when rock vs. paper' do
      game.outcome('rock', 'paper')
      expect(game.winner).to eq 'paper'
    end

    it 'sets rock as the winner when rock vs. scissors' do
      game.outcome('rock', 'scissors')
      expect(game.winner).to eq 'rock'
    end

    it 'sets scissors as the winner when paper vs. scissors' do
      game.outcome('paper', 'scissors')
      expect(game.winner).to eq 'scissors'
    end

    it 'sets tie as the winner when weapons are the same' do
      game.outcome('rock','rock')
      expect(game.winner).to eq 'tie'
    end
  end
end
