require 'game'

describe Game do
  describe '#result' do
    it 'returns "draw" if player_1 draws with player_2' do
      expect(subject.result('rock', 'rock')).to eq('draw')
    end

    it 'returns "win" if player_1 beats player_2' do
      expect(subject.result('rock', 'scissors')).to eq('win')
    end

    it 'returns "lose" if player_1 loses to player_2' do
      expect(subject.result('rock', 'paper')).to eq('lose')
    end
  end
end
