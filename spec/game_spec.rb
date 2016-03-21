require 'game'

describe Game do

  let(:player) { double :player }
  subject(:rps_game) { described_class.new(player) }

  context '#game_result' do
    it 'allows the player to win a game' do
      allow(player).to receive(:choice).and_return(:paper)
      allow(subject).to receive(:opponent_choice).and_return(:rock)
      expect(rps_game.game_result).to eq :win
    end

    it 'allows the player to lose a game' do
      allow(player).to receive(:choice).and_return(:rock)
      allow(subject).to receive(:opponent_choice).and_return(:paper)
      expect(rps_game.game_result).to eq :lose
    end

    it 'allows the player to tie a game' do
      allow(player).to receive(:choice).and_return(:rock)
      allow(subject).to receive(:opponent_choice).and_return(:rock)
      expect(rps_game.game_result).to eq :tie
    end
  end

end
