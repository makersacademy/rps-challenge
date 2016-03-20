require 'game'

describe Game do
  let(:player_rock) { double(:player, name: "player", selected: "rock") }
  let(:player_paper) { double(:player, name: "player", selected: "paper") }
  let(:player_scissors) { double(:player, name: "player", selected: "scissors") }

  describe 'Game.player' do
    it 'returns the player instance' do
      Game.start player_rock
      expect(Game.player).to eq player_rock
    end
  end

  describe 'player chooses rock' do
    before(:each) { Game.start player_rock }
    it 'draws when both match' do
      Game.generate ['rock']
      expect(Game.result).to eq 'draw'
    end

    it 'loses against' do
      Game.generate ['paper']
      expect(Game.result).to eq 'player loses'
    end

    it 'wins against' do
      Game.generate ['scissors']
      expect(Game.result).to eq 'player wins'
    end
  end

  describe 'player chooses scissors' do
    before(:each) { Game.start player_scissors }
    it 'loses against' do
      Game.generate ['rock']
      expect(Game.result).to eq 'player loses'
    end

    it 'wins against' do
      Game.generate ['paper']
      expect(Game.result).to eq 'player wins'
    end
  end

  describe 'player chooses paper' do
    before(:each) { Game.start player_paper }
    it 'loses against' do
      Game.generate ['scissors']
      expect(Game.result).to eq 'player loses'
    end

    it 'wins against' do
      Game.generate ['rock']
      expect(Game.result).to eq 'player wins'
    end
  end
end
