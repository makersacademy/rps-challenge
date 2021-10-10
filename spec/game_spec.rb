# frozen_literal_string: true

require 'game'

RSpec.describe Game do
  describe '#result' do
    context 'when both players draw' do
      it 'returns that it is a draw' do
        result = subject.result(:scissors, :scissors)

        expect(result).to eq :draw
      end
    end
    context 'when rock beats scissors' do
      it 'returns player 1' do
        player_one = :rock

        result = subject.result(player_one, :scissors)

        expect(result).to eq :player_one
      end

      it 'returns player 2' do
        player_two = :rock

        result = subject.result(:scissors, player_two)

        expect(result).to eq :player_two
      end
    end
    context 'when scissors beats paper' do
      it 'returns player 1' do
        player_one = :scissors

        result = subject.result(player_one, :paper)

        expect(result).to eq :player_one
      end

      it 'returns player 2' do
        player_two = :scissors

        result = subject.result(:paper, player_two)

        expect(result).to eq :player_two
      end
    end
    context 'when paper beats rock' do
      it 'returns player 1' do
        player_one = :paper

        result = subject.result(player_one, :rock)

        expect(result).to eq :player_one
      end

      it 'returns player 2' do
        player_two = :paper

        result = subject.result(:rock, player_two)

        expect(result).to eq :player_two
      end
    end
  end
end
