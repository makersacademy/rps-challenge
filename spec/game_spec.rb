# frozen_literal_string: true

require 'game'

RSpec.describe Game do
  describe '#random_gesture' do
    it 'chooses rock, paper or scissors' do
      gesture = subject.random_gesture

      expect(gesture).to match(/(rock)|(paper)|(scissors)/)
    end

    it 'chooses paper' do
      random_to_return(1)

      gesture = subject.random_gesture

      expect(gesture).to eq 'paper'
    end

    it 'chooses rock' do
      random_to_return(0)

      gesture = subject.random_gesture

      expect(gesture).to eq 'rock'
    end

    it 'chooses scissors' do
      random_to_return(2)

      gesture = subject.random_gesture

      expect(gesture).to eq 'scissors'
    end
  end

  describe '#result' do
    context 'when both players draw' do
      it 'returns that it is a draw' do
        result = subject.result('scissors', 'scissors')

        expect(result).to eq 'Its a draw!'
      end
    end
    context 'when rock beats scissors' do
      it 'returns player 1' do
        player_one = 'rock'

        result = subject.result(player_one, 'scissors')

        expect(result).to eq 'player_one'
      end

      it 'returns player 2' do
        player_two = 'rock'

        result = subject.result('scissors', player_two)

        expect(result).to eq 'player_two'
      end
    end
    context 'when scissors beats paper' do
      it 'returns player 1' do
        player_one = 'scissors'

        result = subject.result(player_one, 'paper')

        expect(result).to eq 'player_one'
      end

      it 'returns player 2' do
        player_two = 'scissors'

        result = subject.result('paper', player_two)

        expect(result).to eq 'player_two'
      end
    end
    context 'when paper beats rock' do
      it 'returns player 1' do
        player_one = 'paper'

        result = subject.result(player_one, 'rock')

        expect(result).to eq 'player_one'
      end

      it 'returns player 2' do
        player_two = 'paper'

        result = subject.result('rock', player_two)

        expect(result).to eq 'player_two'
      end
    end
  end

  def random_to_return(number)
    allow(subject).to receive(:random_choice).and_return(number)
  end
end
