require 'game'

describe Game do

  describe '#winning combination' do
    it 'should win if choice is paper and opponent has rock' do
      new_game = Game.new 'paper'
      allow(new_game).to receive(:opponents_selection) { 'rock' }
      expect(new_game.result).to eq "Winner"
    end
  end

  describe '#drawing combination' do
    it 'should draw if player choice and opponent choice is the same' do
      new_game = Game.new 'paper'
      allow(new_game).to receive(:opponents_selection) { 'paper' }
      expect(new_game.result).to eq "Draw"
    end
  end

  describe '#losing combination' do
    it 'should lose if choice is paper and opponent has scissors' do
      new_game = Game.new 'paper'
      allow(new_game).to receive(:opponents_selection) { 'scissors' }
      expect(new_game.result).to eq "Loser"
    end
  end

end