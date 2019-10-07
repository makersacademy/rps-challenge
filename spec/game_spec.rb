require 'game'

describe Game do

  context 'user checking result' do
    it '#win? return true when user win' do
    player = 'rock'
    computer = 'scissors'
    expect(Game.win?(player,computer)).to eq true
    end

    it '#win? return false when user lose' do
    player = 'paper'
    computer = 'scissors'
    expect(Game.win?(player,computer)).to eq false
    end
    it '#draw? return true if user and computer have the same move' do
    player = 'paper'
    computer = 'paper'
    expect(Game.draw?(player,computer)).to eq true
    end
    it '#draw? return false if user and computer have  different move' do
    player = 'paper'
    computer = 'rock'
    expect(Game.draw?(player,computer)).to eq false
    end
  end
end