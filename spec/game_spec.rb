require 'game'

describe Game do

  let(:player) { double :player }
  subject(:game) { described_class.new(player) }

  context 'options' do
    it 'keeps all the options' do
      expect(subject.options).to eq ["Rock", "Paper", "Scissors"]
    end
  end

  context 'play' do
    it 'gives a random option' do
      expect(["Rock", "Paper", "Scissors"].include?(subject.play)).to eq true
    end

    it 'declares_winner' do
      expect(["Alex", "Computer"].include?(subject.declare_winner)).to eq true
    end
  end
end
