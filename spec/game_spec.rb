require 'game'

describe Game do

  subject(:game) { described_class.new(player1) }
  let(:player1) {double :player1}
  PLAY_OPTIONS = ["rock", "paper", "scissors"]

  describe 'initialize'do
    it'returns 3 play options'do
      expect(PLAY_OPTIONS).to include "rock", "paper", "scissors"
    end
  end

  describe 'computer options' do

    it 'computer choice randomly returns rock, paper or scissors' do
      game.cpu_choice
      expect(["rock", "paper", "scissors"]).to include(game.cpu_choice)
    end

end

  describe 'draw' do
      it 'returns true if computer choice matches players' do
        allow(player1).to receive(:user_choice).and_return("paper")
        allow(game).to receive(:cpu_choice).and_return"paper"
        expect(game.draw?).to eq true
      end
  end

  describe 'win' do

    it 'returns true if user chooses rock and cpu chooses scissors' do
      user_choice = "rock"
      cpu_choice = "scissors"
      expect(game.win?).to eq true
    end

    it 'returns true if user chooses paper and cpu chooses rock' do
      user_choice = "paper"
      cpu_choice = "rock"
      expect(game.win?).to eq true
    end

    it 'returns true if user chooses scissors and cpu chooses paper' do
      user_choice = "scissors"
      cpu_choice = "paper"
      expect(game.win?).to eq true
    end

  end

end
