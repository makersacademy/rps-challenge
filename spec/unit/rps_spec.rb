require 'spec_helper'

describe Game do

  describe '#rps' do
    it 'initialises with array of choices' do
      expect(subject.rps).to eq ["Rock", "Paper", "Scissors"]
    end
  end

  describe '#computer_turn' do
    it 'chooses rock, paper or scisssors for the computer' do
      allow(subject.computer_turn).to receive(:sample).and_return("Rock")
      expect(subject.computer_turn).to eq "Rock"
    end
  end
end
