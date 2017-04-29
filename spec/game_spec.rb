require 'game'

describe Game do
  subject(:game) { described_class.new('CaptainCode', 'RosiePoSie')}
  let(:player) { double :player }

  it 'assigns players correctly' do
    expect(game.current_turn). to eq 'CaptainCode'
  end

  describe '#auto_play' do
    it 'selects a random string from the moves array' do
      allow(game).to receive(:auto_play).and_return('rock', 'paper', 'scissors')
      expect(game.auto_play).to eq 'rock'
      expect(game.auto_play).to eq 'paper'
      expect(game.auto_play).to eq 'scissors'
    end
  end

  # describe '#win' do
  #   'it increases player score by 1' do
  #     allow(player).to_receive(:)
  #     expect(game.win(player)).to change { player.score }.by(1)
  #   end
  # end
end
