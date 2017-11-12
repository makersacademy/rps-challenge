require 'game'

describe Game do
  let(:player) { double(:player, name: 'Gabriela') }
  let(:rock) { double(:rock) }
  let(:game) { described_class = Game.new(player) }


  describe 'Attributes' do
    it 'has a player by default' do
      expect(game.player.name).to eq 'Gabriela'
    end
  end

  describe 'player choosing a weapon' do
    it 'player chose weapon' do
      game.player_choice(:rock)
      expect(game.player_choice(:rock)).to eq :rock
    end
  end

  describe 'computer random weapon' do
    it 'computer chooses paper' do
      srand(1)
      expect(game.computer).to eq :paper
    end
  end

  describe 'result' do
    it 'player chooses rock, computer paper' do
      game.player_choice(:rock)
      srand(1)
      puts 'Computer has chosen'
      p game.computer
      expect(game.result).to eq :lose
    end
  end

  describe 'result' do
    it 'player chooses paper, computer rock' do
      game.player_choice(:paper)
      srand(2)
      puts 'Computer has chosen'
      p game.computer
      expect(game.result).to eq :win
    end
  end

  describe 'result' do
    it 'player chooses scissors, computer scissors' do
      game.player_choice(:scissors)
      srand(3)
      puts 'Computer has chosen'
      p game.computer
      expect(game.result).to eq :even
    end
  end

end
