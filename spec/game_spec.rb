# frozen_literal_string: true

require 'game'

RSpec.describe Game do
  describe '#result' do
    context 'when both players draw' do
      it 'returns draw symbol' do
        result = subject.result(:scissors, :scissors)

        expect(result).to eq :draw
      end
    end
    context 'when rock beats scissors' do
      it 'returns player_one symbol' do
        player_one = :rock

        result = subject.result(player_one, :scissors)

        expect(result).to eq :player_one_win
      end

      it 'returns player_two symbol' do
        player_two = :rock

        result = subject.result(:scissors, player_two)

        expect(result).to eq :player_two_win
      end
    end
    context 'when scissors beats paper' do
      it 'returns player_one symbol' do
        player_one = :scissors

        result = subject.result(player_one, :paper)

        expect(result).to eq :player_one_win
      end

      it 'returns player_two symbol' do
        player_two = :scissors

        result = subject.result(:paper, player_two)

        expect(result).to eq :player_two_win
      end
    end
    context 'when paper beats rock' do
      it 'returns player_one symbol' do
        player_one = :paper

        result = subject.result(player_one, :rock)

        expect(result).to eq :player_one_win
      end

      it 'returns player_two symbol' do
        player_two = :paper

        result = subject.result(:rock, player_two)

        expect(result).to eq :player_two_win
      end
    end
  end
end
