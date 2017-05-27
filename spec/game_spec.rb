require 'game'

describe Game do
let (:player) {double(:player, :choice => :rock)}
subject(:game) {described_class.new(player)}
  describe '#computer_choice' do
    it 'computer chooses a number' do
    expect(game.computer_choice).to be_an_integer
    end
  end
  describe '#player_choice' do
    it 'gives the value of the array the input of RPS choice' do
    expect(game.player_choice).to eq 0
    end
  end

  describe '#@computer_c' do
    it 'holds the value from the computer_choice method' do
      game.computer_choice
      expect(game.computer_c).to be_an_integer
    end
  end

  describe '#@player_c' do
    it 'holds the value from the player_c method' do
      game.player_choice
      expect(game.player_c).to eq 0
    end
  end

  describe '#winner' do
    it 'returns DRAW if the player and computer gives the same value' do
      game1 = Game.new(player,0,0)
      expect(game.winner).to eq 'DRAW'
    end
    it 'returns DRAW if the player and computer gives the same value' do
      game1 = Game.new(player,1,1)
      expect(game.winner).to eq 'DRAW'
    end
    it 'returns DRAW if the player and computer gives the same value' do
      game1 = Game.new(player,2,2)
      expect(game1.winner).to eq 'DRAW'
    end
    it 'returns PLAYER WON if the player gives rock and computer gives scissors' do
      game1 = Game.new(player,0,2)
      expect(game1.winner).to eq 'PLAYER WON'
    end
    it 'returns PLAYER WON if the player gives paper and computer gives rock' do
      game1 = Game.new(player,1,0)
      expect(game1.winner).to eq 'PLAYER WON'
    end
    it 'returns PLAYER WON if the player gives scissors and computer paper ' do
      game1 = Game.new(player,2,1)
      expect(game1.winner).to eq 'PLAYER WON'
    end
    it 'returns COMPUTER WON if the player gives rock and computer gives paper' do
      game1 = Game.new(player,0,1)
      expect(game1.winner).to eq 'COMPUTER WON'
    end
    it 'returns COMPUTER WON if the player gives scissors and computer gives rock' do
      game1 = Game.new(player,2,0)
      expect(game1.winner).to eq 'COMPUTER WON'
    end
    it 'returns COMPUTER WON if the player gives paper and computer gives scissors' do
      game1 = Game.new(player,1,2)
      expect(game1.winner).to eq 'COMPUTER WON'
    end
  end
end
