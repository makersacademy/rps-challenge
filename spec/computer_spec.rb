# frozen_literal_string: true

require 'computer'

RSpec.describe Computer do
  describe '#random_gesture' do
    it 'chooses rock, paper or scissors' do
      gesture = subject.random_gesture

      expect(gesture).to match(/(rock)|(paper)|(scissors)/)
    end

    it 'chooses paper' do
      srand(123_456)

      gesture = subject.random_gesture

      expect(gesture).to eq 'paper'
    end

    it 'chooses rock' do
      srand(0)

      gesture = subject.random_gesture

      expect(gesture).to eq 'rock'
    end

    it 'chooses scissors' do
      srand(123_458)

      gesture = subject.random_gesture

      expect(gesture).to eq 'scissors'
    end
  end
end
