require 'game'

describe Game do

  context 'player move is rock' do
    let(:player) { double :Player, move: :rock }

    it 'player wins with rock against scissors' do
      computer_double = double :Computer, move: :scissors
      game = Game.new(player, computer_double)
      game.set_result
      expect(game.result).to eq :win
    end

    it 'player loses with rock against paper' do
      computer_double = double :Computer, move: :paper
      game = Game.new(player, computer_double)
      game.set_result
      expect(game.result).to eq :lose
    end

    it 'player draws with rock against rock' do
      computer_double = double :Computer, move: :rock
      game = Game.new(player, computer_double)
      game.set_result
      expect(game.result).to eq :draw
    end

  end

  context 'player move is paper' do
    let(:player) { double :Player, move: :paper }

    it 'player loses with paper against scissors' do
      computer_double = double :Computer, move: :scissors
      game = Game.new(player, computer_double)
      game.set_result
      expect(game.result).to eq :lose
    end

    it 'player draws with paper against paper' do
      computer_double = double :Computer, move: :paper
      game = Game.new(player, computer_double)
      game.set_result
      expect(game.result).to eq :draw
    end

    it 'player wins with paper against rock' do
      computer_double = double :Computer, move: :rock
      game = Game.new(player, computer_double)
      game.set_result
      expect(game.result).to eq :win
    end

  end

  context 'player move is scissors' do
    let(:player) { double :Player, move: :scissors }

    it 'player draws with scissors against scissors' do
      computer_double = double :Computer, move: :scissors
      game = Game.new(player, computer_double)
      game.set_result
      expect(game.result).to eq :draw
    end

    it 'player wins with scissors against paper' do
      computer_double = double :Computer, move: :paper
      game = Game.new(player, computer_double)
      game.set_result
      expect(game.result).to eq :win
    end

    it 'player loses with scissors against rock' do
      computer_double = double :Computer, move: :rock
      game = Game.new(player, computer_double)
      game.set_result
      expect(game.result).to eq :lose
    end

  end

end
