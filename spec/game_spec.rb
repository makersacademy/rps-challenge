require 'game'

describe Game do
  describe 'returns correct results from games'do
    it 'returns loss from rock paper'do
      game = Game.new(:rock, :paper)
      expect(game.result).to eq :lose
    end
    it 'returns win from rock scissor'do
      game = Game.new(:rock, :scissors)
      expect(game.result).to eq :win
    end
    it ' returns draw from rock rock'do
      game = Game.new(:rock, :rock)
      expect(game.result).to eq :draw
    end
    it 'returns win from scissors paper'do
      game = Game.new(:scissors, :paper)
      expect(game.result).to eq :win
    end
    it 'returns lose from scissors rock'do
      game = Game.new(:scissors, :rock)
      expect(game.result).to eq :lose
    end
    it 'returns draw from scissors scissors'do
      game = Game.new(:scissors, :scissors)
      expect(game.result).to eq :draw
    end
    it 'returns win from paper rock'do
      game = Game.new(:paper, :rock)
      expect(game.result).to eq :win
    end
    it 'returns lose from paper scissors'do
      game = Game.new(:paper, :scissors)
      expect(game.result).to eq :lose
    end
    it 'returns draw from paper paper'do
      game = Game.new(:paper, :paper)
      expect(game.result).to eq :draw
    end
  end


end
