# frozen_literal_string: true

require 'computer'

RSpec.describe Computer do
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

  def random_to_return(number)
    allow(subject).to receive(:random_choice).and_return(number)
  end
end
